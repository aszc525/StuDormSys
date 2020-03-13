var lineNum=["东教场胡同","中京畿道东段","二龙路北段","西黄城根北街","大红罗厂街东段","车公庄南街",
            "金城坊街南街","金城坊街东街","金城坊街西街","赵登禹路北段","展览馆路北段","地安门外大街","地安门内大街"
            ,"景山后街西段"];
var StartPlace=["德胜门西大街~西内大街","中京畿道小区~西单北大街","辟才胡同~二龙路西街","地安门西大街~西安门大街"
              ,"爱民街~西皇城根北街","车公庄大街~百万庄大街","金城坊西街~广宁伯街","金城坊南街~太平桥大街"]; 
var LongRoad=["支路","次干","主干"];            
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
        

      