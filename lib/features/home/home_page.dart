import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/core/spacings/app_spacing.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key(WidgetKeys.homeScaffoldKey),
      appBar: AppBar(
        title: Text("Kubeta", style: TextStyle(
          fontSize: 61,
          color: Colors.orange,
          backgroundColor: Colors.lime
        )),
      ),
      body: Center(
        child: Column(
          children: [
            Visibility(
              visible: true,
              child: ElevatedButton(
                child: Text(S.of(context).dog_image_random),
                onPressed: () {
                  context.push(AppRouter.dogImageRandomPath);
                },
              ),
            ),
            AppSpacing.verticalSpacing32,
            Row(
              children: [
                ElevatedButton(
                  child: Text(S.of(context).setting),
                  onPressed: () {
                    context.push(AppRouter.settingPath);
                  },

                ),
                ElevatedButton(
                  child: Text(S.of(context).setting),
                  onPressed: () {
                    context.push(AppRouter.settingPath);
                  },

                ),

              ],
            ),
            AppSpacing.verticalSpacing32,
            ElevatedButton(
              child: Text(S.of(context).assets),
              onPressed: () {
                context.push(AppRouter.assetsPath);
              },
            ),
            AppSpacing.verticalSpacing32,
            ElevatedButton(
              child: Text(S.of(context).image_from_db),
              onPressed: () {
                context.push(AppRouter.imagesFromDbPath);
              },
            ),
            AppSpacing.verticalSpacing32,
            ElevatedButton(
              child: const Text('Sample Tae'),
              onPressed: () {
                context.push(AppRouter.samplePath);
              },
            ),
            AppSpacing.verticalSpacing32,
            ElevatedButton(
              child: const Text('Qr Code'),
              onPressed: () {
                context.push(AppRouter.qrCodePath);
              },
            ),
          ],
        ),
      ),
    );
  }
}
