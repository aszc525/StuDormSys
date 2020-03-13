/**
 * Created by new on 2017/5/22.
 */
$(document).ready(function () {

    $.jgrid.defaults.styleUI = 'Bootstrap';
    var mydata = [
        {
            id: "1",
            name: "西单1#人行天桥",
            JD: "西单北大街",
            QD: "西单大街东侧",
            ZD: "西单大街西侧",
            JSND: "1982",
            QLSX:"过街天桥",
            QLCZ:"铝合金",
            QSDW:"西城区市政市容委",
            PDDJ:"B",
            JCDW:"中冶建筑研究总院有限公司",
            JCSJ:"2015.5"
        }

    ];
    $("#table_list_2").jqGrid({
        data: mydata,
        datatype: "local",
        height: 450,
        autowidth: true,
        shrinkToFit: true,
        rowNum: 20,
        rowList: [10, 20, 30],
        colNames: ["序号","桥梁名称","街道","起点","终点","建设年代","桥梁属性","桥梁材质","权属单位"	,"检测评定等级","检测单位","检测时间"],
        colModel: [
            {
                name: 'id',
                index: 'id',
                editable: true,
                width: 15,
                sorttype: "int",
                search: true,
                align: "center"
            },
            {
                name: 'name',
                index: 'name',
                editable: true,
                width: 40,
                align: "center"
            },
            {
                name: 'JD',
                index: 'JD',
                editable: true,
                width: 35,
                align: "center"
            },
            {
                name: 'QD',
                index: 'QD',
                editable: true,
                width: 30,
                align: "center"
            },
            {
                name: 'ZD',
                index: 'ZD',
                editable: true,
                width: 30,
                align: "center"
            },
            {
                name: 'JSND',
                index: 'JSND',
                align: "center",
                editable: true,
                width:25,
                sortable: false

            },
            {
                name: 'QLSX',
                index: 'QLSX',
                editable: true,
                width: 30,
                align: "center"
            },
            {
                name: 'QLCZ',
                index: 'QLCZ',
                editable: true,
                width: 30,
                align: "center"
            },
            {
                name: 'QSDW',
                index: 'QSDW',
                editable: true,
                width: 50,
                align: "center"
            },
            {
                name: 'PDDJ',
                index: 'PDDJ',
                editable: true,
                width: 30,
                align: "center"
            },
            {
                name: 'JCDW',
                index: 'JCDW',
                editable: true,
                width: 55,
                align: "center"
            },
            {
                name: 'JCSJ',
                index: 'JCSJ',
                editable: true,
                width: 25,
                align: "center"
            }
        ],
        pager: "#pager_list_2",
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
        search: true
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