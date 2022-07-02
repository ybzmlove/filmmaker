//*****header
Vue.component("header-el", {
    data : () => {
        return {
            menuList : [
                ["About", "./about.html"],
                ["Movie", "./movie.html"],
                ["Artist", "./artist.html"],
                ["Audition", "./audition.html"],
                ["Community", "./community.html"],
            ]
        }
    },
    template : `
    <header>
        <div class="wrap">
            <div class="logo">
                <a href="#"><img src="./img/logo_fm.png" alt=""></a>
            </div>
            <nav>
                <ul>
                    <li v-for="list of menuList"><a :href="list[1]">{{list[0]}}</a></li>
                </ul>
            </nav>
        </div>
    </header>
    `
});

Vue.component("bannertop-el", {
    data : () => {
        return {
            slide_img : ["visual.png", "visual_02.png", "visual_03.png", "visual_04.png"]            
        }
    },
    template : `
    <div id="slider">
        <div class="slide_frame">

            <div v-for="list in slide_img" class="slide">
                <div class="bgImg" :style="'background-image: url(./img/'+list+')'"></div>
                <div class="dark"></div>
            </div>
        </div>
        <div class="wrap">
            <div class="text_part">
                <h2>지금부터 당신의 영화가 시작됩니다.</h2>
                <a href="#">오디션 참가</a>
            </div>
        </div>
    </div>
    `
    //반복되는 과정상 스타일 선언이 안됨 => 하위요소에 스타일을 걸어준다. 
});

Vue.component("cont1-el", {
    data : () => {
        return {
            movieList : [
                {img:"cont_01.png", title:"죄 많은 소녀 (After My Death, 2019)"},
                {img:"cont_02.jpeg", title:"소공녀 (Microhabitat, 2020)"},
                {img:"cont_03.jpg", title:"벌새 (House of Hummingbird, 2018)"},
            ]
        }
    },
    template : `
    <div id="movie">
        <div class="wrap">
            <h2>Today's Movie</h2>
            <div class="content">

                <div v-for="list in movieList" class="box">
                    <div class="movie_item" :style="'background-image: url(./img/'+list.img+')'">
                        <img src="./img/play_icon.png" alt="">
                    </div>
                    <h3>{{list.title}}</h3>
                </div>

            </div>
        </div>
    </div>
    `
});

Vue.component("bannermid-el", {
    data : () => {
        return {
            schedule : "Audition Schedule",
            info : "실시간으로 업데이트 되는 오디션 정보를 확인하실 수 있습니다. 배우 또는 배우 지망생분들의 많은 참여 바랍니다.",
            button : "오디션 정보 확인"
        }
    },
    template : `
    <div id="banner_mid">
        <div class="wrap">
            <h3>{{schedule}}</h3>
            <p>{{info}}</p>
            <a href="#">{{button}}</a>
        </div>
    </div>
    `
});

Vue.component("cont2-el", {
    data : () => {
        return {
            actorList : [
                {img: "yeobeen.png", actorName: "전여빈"},
                {img: "saebyeok.png", actorName: "김새벽"},
                {img: "sanghee.png", actorName: "이상희"},
                {img: "yeeun.png", actorName: "김예은"},
                {img: "hakju.png", actorName: "김학주"},
                {img: "jungmin.png", actorName: "박정민"},
            ]
        }        
    },
    template : `
    <div id="actor">
        <div class="wrap">
            <h2>Actors</h2>
            <div class="content">
                <div v-for="list in actorList" class="box">
                    <img :src="'./img/'+list.img" alt="">                 
                    <div class="dark">
                        <p>{{list.actorName}}</p>
                        <a href="">필모그래피</a>
                    </div>
                </div>
            </div>
            <a href="#">더보기</a>
        </div>
    </div>
    `
});

Vue.component("review-el", {
    data : () =>{
        return {
            reviewList : [
                {img : "review1.jpg", name : "김주영"},
                {img : "review2.jpg", name : "김학주"},
                {img : "review3.jpg", name : "박정민"}
            ]
        }
    },
    template : `
    <div id="review">
        <div class="wrap">
            <h4>Audition Reviewes</h4>
            <div class="contBox">
                <div v-for="list in reviewList" class="content">
                    <p>1차 오디션 합격 후, 감독님과의 직접 오디션을 보는 소중한 기회를 얻게 되었습니다. 감독님께서 제시하신 키워드에 맞게 준비한 연기를 보여드렸습니다. 연기가 끝나고 감독님께서는 호흡, 발음, 발성, 집중력 등 다각도에서 꼼꼼한 평을 해주셨습니다. 연기뿐만 아니라 프로필 사진에 대해서도 조언을 해주셨고, 제가 미처 생각하지 못했던 부분을 짚어주셔서 큰 도움을 받게 되었습니다.</p>
                    <div class="img_part">
                        <img :src="'./img/'+list.img" alt="">
                    </div>
                    <p>{{list.name}}</p>
                </div> 
            </div>
                       
        </div>
    </div>  
    `
});

Vue.component("footer-el", {
    data : () => {
        return {
            terms : [
                "이용약관", "개인정보 취급방침", "고객 상담실"
            ]
        }
    },
    template : `
    <footer>
        <div class="wrap">
            <div class="footer_top">
                <ul>
                    <li v-for="list in terms"><a href="#">{{list}}</a></li>
                </ul>
            </div>
            <div class="footer_bottom">
                <div class="left">                
                    <ul>
                        <li>Filmmakers</li>
                        <li>대표 : 임지애</li>
                        <li>사업자등록번호 : 113-28-507</li>
                        <li>주소 : 서울특별시 강남구 논현로</li>
                        <li>개인정보관리책임자 : 한상용</li>
                    </ul>
                    <p>© 1999 - 2022 Filmmakers</p>                 
                </div>
                <div class="right">
                    <p>고객센터(이용 및 결제 문의) 제휴 및 대외 협력, 광고 문의</p>
                    <ul>
                        <li>대표전화 : 02-1234-5678</li>
                        <li>카카오톡 플러스친구 : 필름메이커스</li>
                    </ul>
                    <p>이메일 : info@filmmakers.com</p>
                </div>
            </div>               
        </div>
    </footer> 
    `
});

new Vue({
    el : "#app",
});



//jQuery 영역  (가동시점은 구조 완성 후)
$(document).ready(function(){
    $("#slider .slide_frame").slick({
        infinite: true,
        fade : true,
        autoplay: true,
        cssEase : 'linear'
    });

    $("#review .contBox").slick({
        infinite : true,
        dots : true,
        arrows : false,
    })

    

});



