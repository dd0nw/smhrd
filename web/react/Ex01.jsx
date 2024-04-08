import React, {useState} from 'react'
import '../App.css'

const Ex01 = () => {
  /* Ex01 학습 목표 !
  1) 리액트에서 Event 객체를 사용해보자
  2) 왜 우리는 리액트에서 변수를 사용할 수 없는지 알아보자.
  3) 변수를 대체해서 state를 사용해보자
   */

  /* React Event
  1. html 요소 안에 onClick : camel Case로 작성
  2. onClick={함수} 이 때, 함수 뒤에 ()를 붙이지 않는다.
  3. 이 때, 함수는 별도로 만든 함수여도 0, 안에 바로 함수를 넣는 것도 0
    -{increase} (0)
    -{()=>{console.log('function')}} (0) / 매개변수를 이용할 때
  4. DOM 요소 안에만 이벤트를 설정 할 수 있다.
    - 내가 직접 만든 컴포넌트 활용할 수 X
  */


  // 변수 : 값은 변하지만 화면에 렌더링되지 않는다.
  let num = 0

  // state
  // const [state이름, 그 state를 변경시키는 함수] = useState(초기값)
  //        - state 이름 : 변수처럼 활용 가능
  //        - 대부분 set + state 이름을 붙임 (set Num)

  // 1. useState를 import 해온다.
  // 2. state를 선언한다.
  const [num2, setNum2] = useState(0);
  // 3. state의 값을 변경한다.
  // state를 변경시키는 함수(변경할 값)
  // setNum2(num2+1)

  /** 숫자를 1씩 증가시키는 함수 */
  const increase = () => {
    console.log('increase funcfion');
    num += 1;

    setNum2(num2+1);

    console.log(num);
  }

  // 숫자를 1씩 감소시키는 함수 
  const decrease = () => {
    setNum2(num2-1);
  }

  return (
    <div className="div-center">
      <h1>{num2}</h1>
      <button onClick={increase}>+1</button>
      <button onClick={decrease}>-1</button>
    </div>
  )
}

export default Ex01