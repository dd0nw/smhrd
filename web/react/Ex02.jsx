import React, {useState} from 'react'
import '../App.css'
// import pic from '../img/pic.jpg'

const Ex02 = () => {

    // 2. public 폴더에 있는 사진
    // let pic = "http://localhost:3000/img/pic.jpg"

    // 3. 외부에서 사진 가져오기
    let pic = "https://cphoto.asiae.co.kr/listimglink/6/2022021015065139442_1644473211.jpg"

    /**
     * React에서 이미지를 띄우는 방법 3가지
     * 
     * 1) src 폴더를 통해 이미지를 import
     * -> import 변수 from '경로'
     * 
     * 2) public 폴더를 통해 이미지에 접근
     * - public 폴더는 그 폴더 자체로 이미 서버와 통신 중
     * - public 폴더에 있는 파일들은 고유주소를 갖게 됨
     * - http://localhost:3000/폴더이름/사진이름.확장자
     * 
     * 
     * 
     * 3) 외부 url을 이용
     */



    const [emoji, setEmoji] = useState('♡');
    const [txt, setTxt] = useState("좋아요");

    const handleLike = () => {
        if (emoji == '♡'){
            setEmoji('♥');
            setTxt("좋아요 취소");
        }else if(emoji == '♥'){
            setEmoji('♡');
            setTxt("좋아요");
        }
    }



    /**
     * 좋아요 실습
     * 1. 비어있는 하트 클릭 시, 하트가 꽉찬 하트로 변경
     *                          + 내용이 좋아요 취소로 변경
     * 2. 꽉찬 하트를 클릭 시, 하트가 비어있는 하트로 변경
     *                          + 내용은 좋아요로 변경
     * 
     * - 하트 state : emoji
     * - 좋아요 state : txt
     * - 좋아요를 핸들링하는 함수 : handleLike
     * 
     * - 하트 클릭 시 handleLike 실행 => 변화
     */
  return (
    <div className='div-center'>
       <img width='300px' src={pic}></img>

       <p>
            <span onClick={handleLike}>{emoji}</span>
            {" "}
            <span>{txt}</span>
       </p>
    
    </div>
  )
}

export default Ex02