import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/freegame/application/cubit/free_game_by_id_cubit.dart';
import 'package:gg/view/component/primary_button.dart';
import 'package:url_launcher/url_launcher.dart';

class FreeGameById extends StatefulWidget {
  final int freeGameId;
  const FreeGameById({super.key, required this.freeGameId});

  @override
  State<FreeGameById> createState() => _FreeGameByIdState();
}

class _FreeGameByIdState extends State<FreeGameById> {
  @override
  Widget build(BuildContext context) {
    bool _hasCallSupport = false;
    Future<void>? _launched;
    String _phone = '';

    @override
    void initState() {
      super.initState();
      // Check for phone call support.
      canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
        setState(() {
          _hasCallSupport = result;
        });
      });
    }

    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    context.read<FreeGameByIdCubit>().getFreeGameById(widget.freeGameId);

    return Scaffold(
      backgroundColor: const Color(0xff3A4F7A),
      body: BlocBuilder<FreeGameByIdCubit, FreeGameByIdState>(
        builder: (context, state) {
          return state.map(
            loading: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loaded: (value) {
              var freeGame = value.freeGames;
              return Center(
                child: SafeArea(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: Image.network(
                              freeGame.thumbnail,
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            )),
                        const SizedBox(height: 20),
                        Container(
                          color: Colors.black12,
                          height: 300,
                          width: double.infinity,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  freeGame.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amberAccent),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 50, 191, 216),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 2,
                                            vertical: 2,
                                          ),
                                          child: Center(
                                            child: Text(
                                              freeGame.platform!,
                                              style:
                                                  const TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 50, 191, 216),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 2,
                                            vertical: 2,
                                          ),
                                          child: Center(
                                            child: Text(
                                              freeGame.genre!,
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Text(freeGame.description!),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          child: Text("Open"),
                          onPressed: () => setState(() {
                            _launched =
                                _launchInBrowser(Uri.parse(freeGame.gameUrl!));
                          }),
                        ),
                      ]),
                ),
              );
            },
            error: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        },
      ),
    );
  }
}
