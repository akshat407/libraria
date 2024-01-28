import 'package:flutter/material.dart';
import 'package:libraria/utils/color.dart';
import 'package:package_info_plus/package_info_plus.dart';

// class version extends StatefulWidget{

//    version({super.key});

//   @override
//   State<version> createState() => _versionState();
// }

// class _versionState extends State<version> {
//    PackageInfo packageInfo = PackageInfo.fromPlatform() as PackageInfo ;

//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Package Info"),
//         centerTitle: true,
//         backgroundColor: Colors.green,
//       ),
//       body:  SingleChildScrollView(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   item('App Name', packageInfo.appName),
//                   item('App Version', packageInfo.version),
//                   item('Build Number', packageInfo.buildNumber),
//                   item('Package Name', packageInfo.packageName),
//                 ],
//               ),
//     ));
//           } 

//   item(String name, String value) {
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             name,
//             style: const TextStyle(
//               fontSize: 16,
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             value,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

 

class version extends StatefulWidget {
  const version({Key? key}) : super(key: key);

  @override
  State<version> createState() => _versionState();
}

class _versionState extends State<version> {
  PackageInfo _packageInfo = PackageInfo(
    appName:'',
    packageName: '',
    version: '1.0.0+1',
    buildNumber: '',
    buildSignature: '',
    installerStore: '',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  Widget _infoTile(String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle.isEmpty ? 'Not set' : subtitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PackageInfoPlus example'),backgroundColor: AIColors.primaryColor2,foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: ListView(
        children: <Widget>[
          _infoTile('App name', 'libraria'),
          _infoTile('Package name',"com.example.flutterPackageInfo_Plus"),
          _infoTile('App version', '1.0.0+1'),
          
          _infoTile(
            'Installer store',
            _packageInfo.installerStore ?? 'not available',
          ),
        ],
      ),
    );
  }
}