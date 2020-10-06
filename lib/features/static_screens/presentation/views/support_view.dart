import 'package:swipar/core/core_presentation/styles.dart' as Style;
import 'package:flutter/material.dart';
import 'package:swipar/views/widgets/custom_scaffold.dart';

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwiparScaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: [
          Text(
            "Support",
            style: Style.headingTextStyle.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Divider(
            color: Colors.black.withOpacity(0.2),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              border: Border.all(),
              color: Color(0xFFF4F5F6),
            ),
            child: Text(
              "FAQ",
              style: Style.headingTextStyle.copyWith(
                color: Style.themeBlack,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              separatorBuilder: (context, index) => SizedBox(
                height: 30,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                List faq = List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "A support question?",
                          style: Style.titleTextStyle,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magnis volutpat justo, dapibus duis pellentesque. Diam volutpat auctor diam egestas. Commodo id tortor.",
                          style: Style.body1TextStyle.copyWith(
                            color: Color(0xFF0F0F0F).withOpacity(0.64),
                          ),
                        )
                      ],
                    ),
                  );
                });
                return faq[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
