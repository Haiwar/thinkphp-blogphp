<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="textml; charset=utf-8" />
    <title>跳转提示</title>
    <link href="https://cdn.bootcss.com/animate.css/3.7.2/animate.min.css" rel="stylesheet">
    <style type="text/css">
        *{ padding: 0; margin: 0; }
        body{ background: #f2f2f2; font-family: '微软雅黑'; color: #333; font-size: 16px; }
        .system-message{ padding: 24px 48px; text-align: center;margin: 100px auto;width: 400px;background: #fff}
        .system-message h1{ font-size: 100px; font-weight: normal; line-height: 120px; margin-bottom: 12px; }
        h1 img{width: 100px;}
        .system-message .jump{ padding-top: 10px}
        .system-message .jump a{ color: #333;}
        .system-message .success,.system-message .error{ line-height: 1.8em; font-size: 18px }
        .system-message .detail{ font-size: 12px; line-height: 20px; margin-top: 12px; display:none}
        .tiao{margin-top: 40px}
        .tiao a{font-size: 16px;color: #fff;background-color: #1E9FFF;padding: 6px 16px;text-decoration: none;}
    </style>
</head>
<body>
<div class="system-message animated bounceInDown">
    <h1>
        <?php switch ($code) {?>
        <?php case 1:?>
        <img src="https://i.loli.net/2020/03/02/cOjIxtya7gb5Muo.png">
        <?php break;?>
        <?php case 0:?>
        <img src="https://i.loli.net/2020/03/02/LMYd3Zb86tQVyIa.png">
        <?php break;?>
        <?php } ?>
    </h1>
    <p class="error"><h2><?php echo(strip_tags($msg));?></h2></p>
    <p class="detail"></p>
    <p class="jump">
        页面自动跳转 等待时间： <b id="wait"><?php echo($wait); ?></b>
    </p>
    <p class="tiao"><a id="href" href="<?php echo($url); ?>">点击跳转</a></p>
</div>
<script type="text/javascript">
  (function(){
    var wait = document.getElementById('wait'),
      href = document.getElementById('href').href;
    var interval = setInterval(function(){
      var time = --wait.innerHTML;
      if(time <= 0) {
        location.href = href;
        clearInterval(interval);
      }
    }, 1000);
  })();
</script>
</body>
