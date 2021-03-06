<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="EasyUI/themes/default/easyui.css" rel="stylesheet"/>
    <link href="EasyUI/themes/icon.css" rel="stylesheet"/>
    <script src="EasyUI/jquery.min.js"></script>
    <script src="EasyUI/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/manager.js"></script>
    <style type="text/css">
        a {
            text-decoration: none;
            color: #000000;
        }
    </style>

</head>

<body class="easyui-layout" data-options="fit:true,scroll:'no'">
<div data-options="region:'north',border:false" style="height: 74px; background: #2596ea; padding: 10px">
    <span style="font-size: 20px;color: #FFFFFF;">违章查询系统</span>
    <br/><a href="Logout.do" style="color: #FFFFFF">注销</a>
</div>
<div data-options="region:'west',split:true,title:'导航菜单'" style="width: 170px;">
    <div class="easyui-accordion" data-options="fit:true,border:false">
        <div title="驾驶人证件信息" data-options="selected:true">
            <div style="margin: 5px">
                <ul class="tree easyui-tree" data-options="animate:true,lines:true">
                    <li data-options="iconCls:'icon-group'">
                        <a href="#" onclick="andTab_tree('驾驶证信息查询','toDriver.do')"><span>驾驶证</span></a>
                    </li>
                    <li data-options="iconCls:'icon-joystick'">
                        <a href="#" onclick="andTab_tree('行驶证证信息查询','toDL.do')"><span>行驶证</span></a>
                    </li>
                </ul>
            </div>
        </div>
        <div title="违章记录管理" style="padding: 10px;">
            <ul class="tree easyui-tree" data-options="animate:true,lines:true">
                <li data-options="state:'closed',iconCls:'icon-joystick'">
                    <span>违章记录</span>
                    <ul>
                        <li data-options="iconCls:'icon-joystick_add'">
                            <a href="#" onclick="andTab_tree('违章记录','toViolationRecord.do')"><span>查询</span></a>
                        </li>
                    </ul>
                </li>
                <li data-options="iconCls:'icon-joystick'">
                    <a href="#" onclick="andTab_tree('申诉记录','toComplainRecord.do')"><span>申诉记录</span></a>
                </li>
            </ul>
        </div>
        <div title="系统设置" style="padding: 10px">
            <ul class="tree easyui-tree" data-options="animate:true,lines:true">

                <li data-options="iconCls:'icon-joystick_add'">
                    <a href="#" onclick="andTab_tree('登录密码修改','modifyPassword.do')"><span>密码修改</span></a>
                </li>
                <li data-options="iconCls:'icon-joystick_add'">
                    <a href="#" onclick="andTab_tree('添加新的管理员','toRegister.do')"><span>添加新的管理员</span></a>
                </li>

            </ul>
        </div>
    </div>
</div>

<div data-options="region:'center'">
    <div id="tabs" class="easyui-tabs" data-options="tools:'#tab-tools',fit:true,border:false">
        <div title="主页" data-options="iconCls:'icon-house'" style="padding: 10px;padding-right: 100px">
            <p style="border-bottom: 1px #dfdfdf solid;font-size: 20px;">公告</p>
            <p id="title">关于2018年车辆管理新出行的通知</p>
            <p id="content">.........</p>
            <p id="date" style="float:right">【发布时间：2018-03-07】</p>
        </div>
    </div>
    <div id="tab-tools">
        <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"
           onclick="addTab()"></a>
        <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'"
           onclick="removeTab()"></a>
    </div>
</div>
<div id="mm" class="easyui-menu" style="width: 150px;">
    <div id="refresh" data-options="iconCls:'icon-arrow_refresh'">刷新</div>
    <div class="menu-sep"></div>
    <div id="close">关闭</div>
    <div id="closeall">全部关闭</div>
    <div id="closeother">除此之外全部关闭</div>
    <div class="menu-sep"></div>
    <div id="closeright">当前页右侧全部关闭</div>
    <div id="closeleft">当前页左侧全部关闭</div>
    <div class="menu-sep"></div>
    <div id="exit">退出</div>
</div>
</body>

</html>