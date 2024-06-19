import 'package:flutter/material.dart';
import 'package:flutter0617/ryan/ryanDetail.dart';
import 'package:flutter0617/ryan/ryanModel.dart';

class ExRyan extends StatefulWidget {
  const ExRyan({super.key});

  @override
  State<ExRyan> createState() => _ExRyanState();
}

class _ExRyanState extends State<ExRyan> {


  // 1. 데이터를 관리하기 위한 리스트 생성 ! -> 이미지/텍스트

  var imgList = ['image/ryan1.jpg', 'image/ryan2.png', 'image/ryan3.jpg',
    'image/ryan4.png','image/ryan5.png','image/ryan6.jpg'];

  var txtList = ['리틀 라이언', '반짝 라이언', '하트 라이언',
    '춘식이와의 만남', '룸메는 춘식이', '좋아요 라이언'];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // 액션을 감지하는 버튼 생성
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // 버튼이 눌리면 리스트가 추가되는 기능 설계
          setState(() {
            imgList.add('image/nezco1.jpg');
            txtList.add('네즈코 등장');
            print('test / ${imgList.length}');
          });
        },
        child: Icon(Icons.add),
      ),


      // 2. ListView 생성 작업 시작
      body: SafeArea(
        child: ListView.builder(
            itemCount: imgList.length,
            itemBuilder: (context, index) =>
            GestureDetector( // 리스트뷰에 있는 각각의 항목이 제스처를 감지하도록 감싼다
              // onTap: (){
              //   // print('${txtList[index]}');
              //
              //   // 항목이 선택되었을 경우 간단한 팝업창 띄우기
              //   showPop(imgList[index], txtList[index], index);
              // },

              onLongPress: (){
                // 디테일 페이지로 넘어가는 기능 만들기 = Route 사용
                // 1. onLongPress 구조 만들기
                // 2. 디테일 페이지 생성
                // 3. 데이터의 객체를 생성하여 사용 => 대량의 데이터를 사용할때 편리하다

                // ryan 객체를 사용하여 데이터들을 하나의 묶음으로 만들기
                Ryan ryan = Ryan(imgList[index], txtList[index], '${index}번째 라이언');


                Navigator.push(context, MaterialPageRoute(builder: (_) =>
                    // RyanDetail(title: txtList[index], img: imgList[index], numberName: '${index}번째 라이언',)));
                    RyanDetail(r:ryan)));
              },

              child: Card(
                child: Row(
                  children: [
                    // 각각의 이미지의 크기를 일정한 비율로 맞추기 위한 Expanded 위젯 사용
                    Expanded(child: Image.asset(imgList[index])),
                    Expanded(child: Column(children: [Text('${txtList[index]}'),Text('${index + 1}번째 라이언')],)),
                  ],
                ),
              ),
            ),
        ),
      ),

    );
  }

  void showPop(image, name, index){
    showDialog(context: context, builder: (context){
      return Dialog(
       child: Container(
         width: MediaQuery.of(context).size.width * 0.7,
         height: 380,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.white,
         ),
         child: Column(
           children: [
             SizedBox(height: 32,),
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Image.asset(image, width: 200, height: 200,),
             ),
             SizedBox(height: 10,),
             Text(name, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey),),
           
            Padding(padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.close), label: Text('삭제하기'),),
                  SizedBox(width: 10,),
                  ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.close), label: Text('close'),),
                ],
              ),
            ),
             
           ],
         ),
       ),
      );
    });
  }


}
