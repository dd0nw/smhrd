import React, {useState} from 'react'

const Ex04 = () => {
    const [ranNum1, setRandom1] = useState(parseInt(Math.random()*6)+1);
    const [ranNum2, setRandom2] = useState(parseInt(Math.random()*6)+1);
    const [count1, setCount1] = useState(0);
    const [count2, setCount2] = useState(0);
    const [result, setR] = useState(" ");

    const btn = () => {
        let r1 = parseInt(Math.random()*6)+1;
        setRandom1(r1);

        let r2 = parseInt(Math.random()*6)+1;
        setRandom2(r2);

        if(r1>r2){
            // count +=1;
            setCount1(count1+1);
        }else if(r1<r2){
            setCount2(count2+1);
        }

        if(count2==10){
            setR("사용자가 이겼습니다");
        }else if(count1==10){
            setR("컴퓨터가 이겼습니다");
        }
    }



  return (
    <div>
      <h1>DICE GAME</h1>
      <button onClick={btn}>Start</button>

      <div className="dice">
      <img src={'./img/dice'+ranNum1+'.png'}></img>
        <h1>Com Score : {count1}</h1>
      </div>
      <div className="dice">
      <img src={'./img/dice'+ranNum2+'.png'}></img>
        <h1>User Score : {count2}</h1>
      </div>

      <h1>결과 : {result}</h1>
    </div>
  )
}

export default Ex04

