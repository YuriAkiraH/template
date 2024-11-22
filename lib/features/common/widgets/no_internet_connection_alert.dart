import 'package:flutter/material.dart';

class NoInternetConnectionAlert {
  void showModal(context) async {
    await showModalBottomSheet(
      useSafeArea: true,
      shape: const Border.fromBorderSide(BorderSide.none),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
          height: 100,
          color: Colors.redAccent,
          child: Center(
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Text(
                    'No internet. Please connect to wi fi or cellular network.',
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Dismiss',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
