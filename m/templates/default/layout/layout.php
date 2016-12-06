<!DOCTYPE HTML>
<head>
    <meta charset="utf-8" />
    <title><?php echo $output['html_title'];?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="email=no">
    <script type="text/javascript" src="<?php echo RESOURCE_SITE_URL;?>/amazeui/js/jquery.min.js"></script>
    <link href="<?php echo RESOURCE_SITE_URL;?>/amazeui/css/amazeui.min.css" rel="stylesheet" type="text/css" />
    <script src="<?php echo RESOURCE_SITE_URL;?>/amazeui/js/amazeui.min.js"></script>
    <script type="text/javascript">
        var docEle = document.documentElement;
        docEle.style.fontSize = parseInt(docEle.getBoundingClientRect().width) / 16 + 'px'; //设置HTML rem的父基点
    </script>
</head>
<?php
defined('InSystem') or exit('Access Invalid!');
require_once($tpl_file);
