
var lineNum=["南礼士路（北段）","三不老胡同","成方街","前帽胡同","北帽胡同","中帽胡同","宣武门东河沿街",
           "虎坊路社区北侧路","金井胡同","善果胡同西段","白纸坊小学（东门）门前路","荣光胡同","南菜园一支"];
var StartPlace=["月坛南街-阜成门外大街","罗儿胡同—德胜门内大街","复兴门北顺城-太平桥大街","赵登禹路-北帽胡同",
                  "大帽胡同—前公用胡同","前公用胡同—前帽胡同","香炉营头条——香炉营头条",
           "虎坊路——徐悲鸿中学","上斜街——达智桥胡同","报国寺西夹道——广义街","白纸坊小学——白广路",
           "赵锥子胡同——储子营胡同","南菜园街——广安门南街"]; 
var LongRoad=["1126","260","459.5","186","226.5","145.8","235.5",
           "255.8","134.5","106.4","98.5","144.7","270"];            
       
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
            for(var j=0;j<StartPlace.length;j++){  
               LongRo+='<option>'+LongRoad[j]+'</option>';  
            }  
               Long.innerHTML=road+LongRo;  
        }

        
        // $.getJSON("busdata.json",function(data){
        //      stationNames = data;
        //  });//get本地的busdata.json文件,并将其值赋给变量stationNames
        

      