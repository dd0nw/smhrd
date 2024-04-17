import React, { createContext, useState } from 'react'
import ColorList from '../components/Ex10/ColorList'
import ColorResult from '../components/Ex10/ColorResult'
import { ColorContext } from '../context/ColorContext';


const Ex10 = () => {

    // Context 란?
    // 리액트 컴포넌트끼리 주고받는 값을 전역적으로 공유할 수 있게 하는 API
    
    // Q. props로만 데이터를 전달했을 때 발생할 수 있는 문제?
    // A. 깊숙히 위치한 컴포넌트에 데이터를 전달할 경우
    //  여러 컴포넌트를 연달아서 props 설정 => 불편하고 실수가 잦음
    //  => 이러한 현상은 Props Drilling 이라고 부른다.
    
    // 그래서 Context 로 상태를 전역적으로 관리해준다.

    // 만드는 순서 !
    // 1) context 를 만들어준다. (계좌)
    // 2) context import 해주기 
    // 3) Provider로 감싸준다 (행원)
    // 4) "나 데이터 필요해" = useContext

    // 내가 전역적으로 사용해줄 state 정의 (Provider가 있는 위치에서)
    const [choiceColor, setChoiceColor] = useState('red')

  return (
    <div>
       <ColorContext.Provider value={{choiceColor, setChoiceColor}}>
        <h1>색상 변경하기</h1>
        <p>원하는 색상을 클릭하세요.</p>
        <ColorList/>
        <hr/>
        <p>선택하신 색상입니다.</p>
        <ColorResult/>
        </ColorContext.Provider>
    </div>
  )
}

export default Ex10