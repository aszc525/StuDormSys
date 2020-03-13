/**
 * Created by new on 2017/5/23.
 */
$(document).ready(function () {

    $.jgrid.defaults.styleUI = 'Bootstrap';
    var mydata = [
        {
            id: "1",
            LX: "通信",
            ZX: "东西",
            GXZJ: "0.3",
            QDMS: "1.5",
            ZDMS: "1.6",
            QDDMGC:"6.2",
            ZDDMGC:"6.5",
            QDJDGC:"1.4",
            ZDJDGC:"1.3",
            Length:"100"
        },


    ];
    $("#table_list_2").jqGrid({
        data: mydata,
        datatype: "local",
        height: 450,
        autowidth: true,
        align: "center",
        shrinkToFit: true,
        rowNum: 20,
        rowList: [10, 20, 30],
        colNames: ["序号","类型","走向","管线直径","起点埋深","终点埋深","起点地面高程","终点地面高程","起点井底高程","终点井底高程","长度"],
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
                name: 'type',
                index: 'type',
                editable: true,
                width: 20,
                align: "center"
            },
            {
                name: 'ZX',
                index: 'ZX',
                editable: true,
                width: 35,
                align: "center",
                sorttype: "float"
            },
            {
                name: 'GXZJ',
                index: 'GXZJ',
                editable: true,
                width: 30,
                align: "center",
                sorttype: "float"
            },
            {
                name: 'QDMS',
                index: 'QDMS',
                editable: true,
                width: 40,
                align: "center",
                sorttype: "float"
            },
            {
                name: 'ZDMS',
                index: 'ZDMS',
                align: "center",
                editable: true,
                width:40,
                sortable: false,
                sorttype: "float"
            },
            {
                name: 'QDDMGC',
                index: 'QDDMGC',
                editable: true,
                width: 50,
                align: "center",
                sorttype: "float"
            },
            {
                name: 'ZDDMGC',
                index: 'ZDDMGC',
                editable: true,
                width: 40,
                align: "center",
                sorttype: "float"
            },
            {
                name: 'QDJDGC',
                index: 'DLDJ',
                editable: true,
                width: 40,
                align: "center",
                sorttype: "float"
            },
            {
                name: 'ZDJDGC',
                index: 'HDMXS',
                editable: true,
                width: 40,
                align: "center",
                sorttype: "float"
            },
            {
                name: 'Length',
                index: 'LKPDDJ',
                editable: true,
                width: 40,
                align: "center",
                sorttype: "float"
            }
        ],
        pager: "#pager_list_2",
        viewrecords: true,
        caption: "地下管道数据",
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