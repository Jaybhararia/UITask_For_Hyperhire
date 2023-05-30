import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('자유톡',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black
              ),),
            ),
            elevation: 0,
            backgroundColor: CupertinoColors.white,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_back_ios,
              color: Colors.black),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/first.png'),
                    backgroundColor: Colors.yellow,
                  ),
                  title: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '안녕 나 응애 ',
                            style: TextStyle(fontWeight: FontWeight.w900,
                                fontSize: 18),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.verified, color: Colors.green, size: 16),
                          SizedBox(
                            width: 2,
                          ),
                          Text('1일전',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 12
                            ),)
                        ],
                      ),
                      Text('165 cm . 53 kg',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14
                        ),)
                    ],
                  ),
                  trailing: CircularBorderedWidget(text: '팔로우',borderColor: Color(0xFF01B99F), backgroundColor: Color(0xFF01B99F), textStyle: TextStyle(color: CupertinoColors.white, fontSize: 12),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff1D232B)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어?\n\n 후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이제일 재밌었다던데 맞아???\n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가\n아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(0xff313B49)
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircularBorderedWidget(text: '#2023', textStyle: TextStyle(color: Color(0xff5A6B87),
                      ),backgroundColor: Color(0xffCED3DE), borderColor: Color(0xffCED3DE)),
                      CircularBorderedWidget(text: '#TODAYISMONDAY', textStyle: TextStyle(color: Color(0xff5A6B87),
                      ),backgroundColor: Color(0xffCED3DE), borderColor: Color(0xffCED3DE)),
                      CircularBorderedWidget(text: '#TOP', textStyle: TextStyle(color: Color(0xff5A6B87),
                      ),backgroundColor: Color(0xffCED3DE), borderColor: Color(0xffCED3DE)),
                      CircularBorderedWidget(text: '#POPS!', textStyle: TextStyle(color: Color(0xff5A6B87),
                      ),backgroundColor: Color(0xffCED3DE), borderColor: Color(0xffCED3DE)),
                      CircularBorderedWidget(text: '#WOW!', textStyle: TextStyle(color: Color(0xff5A6B87),
                      ),backgroundColor: Color(0xffCED3DE), borderColor: Color(0xffCED3DE)),
                    ],
                  ),

                ),
                SizedBox(height: 10),
                FullWidthImage(imageUrl: 'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg'),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_border_outlined, color: Color(0xffAFB9CA)
                        ,),
                    ),
                    Text('5', style: TextStyle(color: Color(0xffAFB9CA)),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(FontAwesomeIcons.comment, color: Color(0xffAFB9CA)
                        ,),
                    ),
                    Text('5', style: TextStyle(color: Color(0xffAFB9CA)),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(FontAwesomeIcons.bookmark, color: Color(0xffAFB9CA)
                        ,),
                    ),
                  ],
                ),
                CommentWidget(comment: Comment(text: '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!', author: '안녕 나 응애 ', verified: true, displayPicture: 'assets/first.png'), isReply: false, backgroundcolor: Colors.yellow,),

                Row(
                  children: [
                    SizedBox(width: 40,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_border_outlined, color: Color(0xffAFB9CA)
                        ,),
                    ),
                    Text('5', style: TextStyle(color: Color(0xffAFB9CA)),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(FontAwesomeIcons.comment, color: Color(0xffAFB9CA)
                        ,),
                    ),
                    Text('5', style: TextStyle(color: Color(0xffAFB9CA)),),

                  ],
                ),

                  CommentWidget(comment: Comment(text: '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다', author: 'ㅇㅅㅇ', verified: false, displayPicture: 'assets/img.png', isReply: true), isReply: true, backgroundcolor: Colors.pinkAccent,),
                Row(
                  children: [
                    SizedBox(width: 80,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_border_outlined, color: Color(0xffAFB9CA)
                        ,),
                    ),
                    Text('5', style: TextStyle(color: Color(0xffAFB9CA)),),

                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.image),
                      hintText: '댓글을 남겨주세요.',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Text('등록'),
                          onTap: () {
                            // Send comment action
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                ],
            ),
          ),

        )
    );
  }
}


class CircularBorderedWidget extends StatelessWidget {
  final String text;
  final double padding;
  final double borderRadius;
  final Color borderColor;
  final Color backgroundColor;
  final TextStyle textStyle;

  const CircularBorderedWidget({
    required this.text,
    this.padding = 6.0,
    this.borderRadius = 20.0,
    this.borderColor = Colors.black,
    this.backgroundColor = Colors.transparent,
    this.textStyle = const TextStyle(fontSize: 12.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

class FullWidthImage extends StatelessWidget {
  final String imageUrl;

  const FullWidthImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Takes up full screen width
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}


class COmmentwidget extends StatelessWidget {
  const COmmentwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/first.png'),
        backgroundColor: Colors.yellow,
      ),
      title: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '안녕 나 응애 ',
                style: TextStyle(fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              SizedBox(width: 5),
              Icon(Icons.verified, color: Colors.green, size: 16),
              SizedBox(
                width: 2,
              ),
              Text('1일전',
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 12
                ),)
            ],
          ),
          Text('165 cm . 53 kg',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 14
            ),)
        ],
      ),
    );
  }
}


class Comment {
  final String text;
  final String author;
  final String displayPicture;
  final bool verified;
  final bool isReply;

  Comment({
    required this.text,
    required this.author,
    required this.displayPicture,
    this.verified = false,
    this.isReply = false,
  });
}

class CommentWidget extends StatelessWidget {
  final Comment comment;
  final bool isReply;
  final Color backgroundcolor;

  CommentWidget({required this.comment, required this.isReply, required this.backgroundcolor});

  @override
  Widget build(BuildContext context) {
    final alignment = comment.isReply ? MainAxisAlignment.end : MainAxisAlignment.start;


    return Row(
      mainAxisAlignment: alignment,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: isReply ? 40 : 0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage(comment.displayPicture),
          backgroundColor: backgroundcolor,

        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left:0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      comment.author,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5.0),
                    if (comment.verified) Icon(Icons.verified, color: Colors.green),
                    Text('1일전',
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12
                      ),)
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    // borderRadius: borderRadius,
                  ),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text(
                    comment.text,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
