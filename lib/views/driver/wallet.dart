import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipar/core/core_presentation/styles.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';

var walletBalance = 560;

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            height: MediaQuery.of(context).size.height * 0.95,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  "Enter Bank Details",
                  style: headingTextStyle,
                )),
                SizedBox(
                  height: 3,
                ),
                Center(
                  child: Text(
                    "Wallet : #$walletBalance",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: themeGreen),
                  ),
                ),
                Spacer(flex: 1),
                TextFields(
                  label: "Account number",
                ),
                TextFields(
                  label: "Account name",
                ),
                TextFields(
                  label: "Bank name",
                ),
                CustomCheckBox(),
                Spacer(
                  flex: 3,
                ),
                LongButton(
                    labelColor: Colors.white,
                    color: Color(0xff13E034),
                    label: "Withdraw",
                    shadow: true,
                    onPressed: () {}),
                Spacer(
                  flex: 8,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  final String label;

  const TextFields({Key key, @required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 43,
      decoration: BoxDecoration(color: Color(0xffF4F5F6)),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8),
            hintText: label,
            border: InputBorder.none),
      ),
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool saveCard = false;

  void _onSaveCard(bool newValue) => setState(() {
        saveCard = newValue;

        if (saveCard) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            activeColor: Colors.white,
            checkColor: Colors.black,
            value: saveCard,
            onChanged: _onSaveCard),
        Text("Save my card")
      ],
    );
  }
}
