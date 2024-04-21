import React, { useEffect, useState } from 'react'
import axios from 'axios'

const Ex13 = () => {

    {/*
    화면에 실시간으로 날씨를 띄워보자.

    1) 단톡에 올라온 주소로 url을 선언하자
    2) 화면이 렌더링 된 이후, 해당 url에 비동기적 통신을 해서 데이터를 가져오자.
        -useEffect, axios
    3) 데이터를 가져오는데 성공했다면, 해당 데이터들을 화면에 반영시켜보자.
        - 기온 : 켈빈온도 - 273 => 섭씨온도
        - 구름 : 0~30 맑음 / 31~60 약간 흐림 / 61~흐림
    */}
    const [name, setName] = useState()
    const [temp, setTemp] = useState()
    const [feelLike, setFeelLike] = useState()
    const [cloud, setCloud] = useState()

    useEffect(()=>{
        let url = 'https://api.openweathermap.org/data/2.5/weather?q=seoul&appid=603aa562f93c1b6e5fb4e7596aa820d5'
        
        axios.get(url).then(res=>{
            setName(res.data.name)
            setTemp(parseInt(res.data.main.temp-273))
            setFeelLike(parseInt(res.data.main.feels_like-273))

            
            if (res.data.clouds.all>0 && res.data.clouds.all<=30){
                setCloud('🌞맑음')
            }else if(res.data.clouds.all>30 && res.data.clouds.all<=60){
                setCloud('⛅약간 흐림')
            }else if(res.data.clouds.all>60){
                setCloud('🌥흐림')
            }
        }
        )
    
    },[])  

  return (
    <div>
        <h1>오늘의 날시는?</h1>
        <p>도시 : {name}</p>
        <p>
            <span>현재 기온은 {temp}°C입니다.</span><br/>
            <span>체감 기온은 {feelLike}°C입니다.</span><br/>
            <span>{cloud}</span>
        </p>
    </div>
  )
}

export default Ex13