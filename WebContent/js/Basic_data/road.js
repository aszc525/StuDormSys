/**
 * Created by new on 2017/5/23.
 */
$(document).ready(function () {

    $.jgrid.defaults.styleUI = 'Bootstrap';
   /* var mydata = [
        {
            id: "1",
            ZX: "东西",
            DLQS: "区属",
            DLMC: "广莲路",
            QDMC: "南蜂窝路",
            ZDMC: "北京西站",
            SSJD:"广安门外街道",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"双幅路",
            LKPDDJ:"无"
        },
        {
            id: "2",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "白广路",
            QDMC: "广安门内大街",
            ZDMC: "白纸坊西街",
            SSJD:"白纸坊街道",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"单幅路",
            LKPDDJ:"无"
        },
        {
            id: "3",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "北线阁街",
            QDMC: "核桃园东街",
            ZDMC: "广安门内大街",
            SSJD:"广安门内街道",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"单幅路",
            LKPDDJ:"无"
        },
        {
            id: "4",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "广义街",
            QDMC: "槐柏树街",
            ZDMC: "广安门内大街",
            SSJD:"广安门内街道",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"单幅路",
            LKPDDJ:"无"
        },
        {
            id: "5",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "核桃园东街",
            QDMC: "广义街",
            ZDMC: "北线阁街",
            SSJD:"广安门内街道",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"单幅路",
            LKPDDJ:"无"
        },
        {
            id: "6",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "红居街",
            QDMC: "广安门外大街",
            ZDMC: "北马连道路",
            SSJD:"广安门外街道",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"双幅路",
            LKPDDJ:"无"
        },
        {
            id: "7",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "红莲南路",
            QDMC: "广安门外车站西街",
            ZDMC: "马连道路",
            SSJD:"广安门外街道",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"四幅路",
            LKPDDJ:"无"
        },
        {
            id: "8",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "",
            QDMC: "10.00",
            ZDMC: "2111.00",
            SSJD:"广安门内街道",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"单幅路",
            LKPDDJ:"无"
        },
        {
            id: "9",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "老墙根街",
            QDMC: "校场口胡同",
            ZDMC: "下斜街",
            SSJD:"白纸坊街道",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"单幅路",
            LKPDDJ:"无"
        },
        {
            id: "11",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "里仁街",
            QDMC: "菜市口大街",
            ZDMC: "右安门内大街",
            SSJD:"春树街道办",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"双幅路",
            LKPDDJ:"无"
        },
        {
            id: "12",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "琉璃厂西街",
            QDMC: "南柳巷",
            ZDMC: "南新华街",
            SSJD:"广安门外街道",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"单幅路",
            LKPDDJ:"无"
        },
        {
            id: "13",
            ZX: "南北",
            DLQS: "区属",
            DLMC: "马连道路",
            QDMC: "广安门外大街",
            ZDMC: "红莲南路",
            SSJD:"大栅栏街道办",
            YHDW:"西城区市政市容管理委员会",
            DLDJ:"次干路",
            HDMXS:"双幅路",
            LKPDDJ:"无"
        }

    ];*/
    $("#table_list_2").jqGrid({
    	//data: mydata,
        url:"<%=basePath%>"+"AddRoadServlet",
        editurl:"<%=basePath%>"+"AddRoadEditServlet",
    	datatype:"json",
        height: 150,
        mtype:"GET",
        autowidth: true,
        shrinkToFit: true,
        rowNum: 20,
        rowList: [10, 20, 30],
        colNames: ['序号', '走向', '道路权属', '道路名称', '起点名称', '终点名称', '所属街道', '养护单位', '道路等级', '横断面形式', '路况评定等级'],
        colModel: [
            {
                name: 'id',
                index: 'ID',
                editable: true,
                width: 20,
                sorttype: "int",
                search: true,
                align: "center"
            },
            {
                name: 'ZX',
                index: 'Direction',
                editable: true,
                width: 20,
                align: "center"
            },
            {
                name: 'DLQS',
                index: 'Ownership',
                editable: true,
                width: 35,
                align: "center"
            },
            {
                name: 'DLMC',
                index: 'RoadName',
                editable: true,
                width: 45,
                align: "center"
            },
            {
                name: 'QDMC',
                index: 'StartPoint',
                editable: true,
                width: 40,
                align: "center"
            },
            {
                name: 'ZDMC',
                index: 'EndName',
                align: "center",
                editable: true,
                width:40,
                sortable: false
            },
            {
                name: 'SSJD',
                index: 'Street',
                editable: true,
                width: 50,
                align: "center"
            },
            {
                name: 'YHDW',
                index: 'Maintenance',
                editable: true,
                width: 60,
                align: "center"
            },
            {
                name: 'DLDJ',
                index: 'RoadLevel',
                editable: true,
                width: 25,
                align: "center"
            },
            {
                name: 'HDMXS',
                index: 'TransectType',
                editable: true,
                width: 25,
                align: "center"
            },
            {
                name: 'LKPDDJ',
                index: 'AssessLevel',
                editable: true,
                width: 30,
                align: "center"
            }
        ],
        pager: "#pager_list_2",
        altRows:true,
        viewrecords: true,
        caption: "道路数据",
        add: true,
        edit: true,
        addtext: 'Add',
        edittext: 'Edit',
        hidegrid: false
    });

    // Add selection
    $("#table_list_2").setSelection(4, true);


    // Setup buttons
    $("#table_list_2").jqGrid('navGrid', '#pager_list_2', {
        edit: true,
        add: true,
        del: true,
        search: true,
        refresh:true
    }, {
        height: 200,
        reloadAfterSubmit: true
    });

    // Add responsive to jqGrid
    $(window).bind('resize', function () {
        var width = $('.jqGrid_wrapper').width();
        $('#table_list_2').setGridWidth(width);
    });
});