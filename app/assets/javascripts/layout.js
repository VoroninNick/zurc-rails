$(function() {
        // fade in the grayscaled images to avoid visual jump
        //$('.greyScale').hide().fadeIn(1000);
      });
      // user window.load to ensure images have been loaded
      $(window).load(function () {
        //$('.greyScale').greyScale({
          // call the plugin with non-defult fadeTime (default: 400ms)
          //fadeTime: 500,
          //reverse: false
        //});
      });



$(window).load(function(){


        $('.bwWrapper').BlackAndWhite({
                hoverEffect:true,
                webworkerPath: 'src/',
                intensity:1,
                onImageReady:function(img){
                        $(img).parent().animate({
                                opacity:1
                        });
                }
        });
});