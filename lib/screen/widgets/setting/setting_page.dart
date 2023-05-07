import 'package:flutter/material.dart';
import 'setting_widget.dart';
import '../../base/base_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  static const pageTitle = 'Settings';

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> with RouteAware {
  bool _unsavedChanges = false;

  @override
  void initState() {
    super.initState();
    _unsavedChanges = true;
  }

  @override
  void dispose() {
    // Remove the listener when the widget is disposed
    //_controller.removeListener(_unsavedChangesListener);
    super.dispose();
  }

  void _unsavedChangesListener() {
    if (!_unsavedChanges ) {
      setState(() {
        _unsavedChanges = true;
      });
    }
  }

  Future<bool> _onWillPop() async {
    // Show a confirmation dialog box when there are unsaved changes
    if (_unsavedChanges) {
      final bool? result = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Save changes?'),
            content: Text('Do you want to save the changes you made?'),
            actions: <Widget>[
              TextButton(
                child: Text('Discard'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              TextButton(
                child: Text('Save'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        },
      );
      if (result == null) {
        return false;
      } else if (result) {
        // Save the changes and return to the previous page
        //_saveChanges();
        return true;
      } else {
        // Discard the changes and return to the previous page
        //_discardChanges();
        return true;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: BasePage(
        pageTitle: SettingPage.pageTitle,
        body: SettingWidget(),
      ),
    );
  }
}