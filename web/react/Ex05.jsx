import React, { useEffect, useState } from 'react'

const Ex05 = () => {
    // useEffect --> state값이 바뀌고 난 직후 특정 로직을 실행시키고 싶을때
  const [num, setNum] = useState(0);
  
  // num값이 10이 된다면 alert을 띄우고 싶습니다 !!
  // state이 변동됨에 따라서 실행 되어지는 함수 !!
  useEffect(()=>{
    console.log(num);
  })
  
    return (
    <div>
        <h1>{num}</h1>
        <button onClick={()=>setNum(num+1)}>+</button>
    </div>
  )
}

export default Ex05