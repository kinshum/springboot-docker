/**
 * Created by 李凤娇 on 2017/4/14. 
 */
export default{

    nested: {
        transparent: {
            margin: 0,
            padding: 0,
            background: 'transparent'
        },
        common: {
            margin: 4,
            background: 'white'
        },
        logoimg:{
            margin:15,

        },
        search: {
            width: 230,
            fontSize:18,
        }
    },
    loginform:{
        wholeDiv:{
            width:"100%",
            height:"100%",
            position:'relative'
        },
        smallDiv:{
            width:"70%",
            height:"70%",
            borderRadius:'10px',
            position:'relative',
            top:"15%",left:'15%',
            background:'url(/image/login_bg_small_03.png)',
            backgroundSize:"100% 100%",
            boxShadow:"0 0 10px 10px rgba(30, 29, 69, .5)"
        },
        wholeStyle:{
            float:'right',
            padding: '45 24 45',
            width:360,
            background: '#fbfbfb',
            border: '1 solid #d9d9d9',
            borderRadius: 6,
            height:"100%"
        },
        loginBackground:{
            width:'100%' ,
            height:'100%',
            background:'url("/image/login_bg.png")',
            backgroundSize: '100% 100%'
        },
        totalForm:{
            float:'right',
            padding: '45 24 45',
            width:'360px',
            background: '#fbfbfb',
            border: '1px solid #d9d9d9',
            borderRadius:10,
            height:'100%'
        },

        logoImg:{
            marginTop:'3%',
            height:'25%'
        },
        content:{
            maxWidth: 280,
            margin: '0 auto',
            height:"72%",
            iconstyle:{
                fontSize:14,
            }
        }
    }
}