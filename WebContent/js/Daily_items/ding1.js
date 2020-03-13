var lineNum=["大方胡同","未英胡同","三里河南五巷","大后仓胡同","翠花街","大红罗厂"," 草岚子胡同","水章胡同",
             "宣武门东河沿街","虎坊路社区北侧路"," 梁家园东胡同","安平里胡同","槐柏树南头条","七井胡同","莲花胡同",
             "后半壁街","后半壁街","大拐棒胡同","西斜街","东智义胡同"," 六十六中西侧路","香仁胡同","登莱胡同","槐柏树前街",
             "培育胡同","天宁寺塔前街","小堂胡同"];
var StartPlace=["树脂玻璃纤维内衬管","高密度聚乙烯（HDPE）中空结构壁缠绕管","高密度聚乙烯双壁波纹管（HDPE）"
             ,"树脂玻璃纤维内衬管","PE（PE100）实壁管","PE缠绕","PE实壁","玻璃纤维",]; 
var LongRoad=["DN280","DN300","DN400","DN500","DN600","DN700","DN900"];            
        // $.getJSON("busdata.json",function(data){
        // 		stationNames = data;
        // 	});//get本地的busdata.json文件,并将其值赋给变量stationNames
        var collect=document.getElementById("type")  //获取道路名称的属性
        var old=collect.innerHTML     
        var start=document.getElementById("first")  //获取道路名称的属性
        var place=start.innerHTML   
         var Long =document.getElementById("long")  //获取道路名称的属性
        var road=long.innerHTML   

        window.onload=function(){       
            var lineNu=" "  //设置数组为空
            for(var j=0;j<lineNum.length;j++){  
                lineNu+='<option>'+lineNum[j]+'</option>';  
            }  
                collect.innerHTML=old+lineNu;  
                 var StartPla=" "  //设置数组为空
            for(var j=0;j<StartPlace.length;j++){  
                StartPla+='<option>'+StartPlace[j]+'</option>';  
            }  
                start.innerHTML=place+StartPla;  
                 var LongRo=" "  //设置数组为空
            for(var j=0;j<LongRoad.length;j++){  
               LongRo+='<option>'+LongRoad[j]+'</option>';  
            }  
               Long.innerHTML=road+LongRo;  
        }

        
        // $.getJSON("busdata.json",function(data){
        //      stationNames = data;
        //  });//get本地的busdata.json文件,并将其值赋给变量stationNames
        

      