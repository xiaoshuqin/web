var __originals = {
    st: setTimeout,
    si: setInterval
};

eval("var setTimeout, setInterval;");

setTimeout = __originals.st;
setInterval = __originals.si;

__originals = undefined;

var __si = setInterval;
window.setInterval = function(callback, timeout, param) {
    var _cb = function() {
        callback.apply(null, [param]);
    }

    return __si(_cb, timeout);
};
var __st = setTimeout;
window.setTimeout = function(callback, timeout, param) {
    var _cb = function() {
        callback.apply(null, [param]);
    }

    return __st(_cb, timeout);
};
(function($) {
    var methods = {
        /*
         瀵硅薄鍒濆鍖�

         triggerCls : 瑙﹀彂鍣╟lass
         trigger : 瑙﹀彂浜嬩欢
         delay : 瑙﹀彂寤惰繜鏃堕棿
         panelCls : 鍐呭鍖篶lass锛屽繀濉�
         pervCls : 涓婁竴姝lass
         nextCls : 涓嬩竴姝lass
         autoPlay : 鑷姩鎾斁
         overPause : 瑕嗙洊鏆傚仠锛屼笌 autoPlay 閰嶅悎浣跨敤
         interval : 鑷姩鎾斁闂撮殧锛屽崟浣嶆绉�
         multiple : 鏄惁鍙悓鏃舵墦寮€澶氫釜
         effect : 鍒囨崲鏁堟灉
         activeCls : 瑙﹀彂鍣ㄩ€変腑鏍峰紡
         autoPlay : 鏄惁鑷姩鎾斁
         interval : 鑷姩鎾斁鏃堕棿闂撮殧
         overPause : 瑕嗙洊鏆傚仠
         activeIndex : 寮€濮嬫鐐�
         delay : 瑕嗙洊瑙﹀彂寤惰繜

         @access public
         @param obj
         */
        init : function(option) {
            var defaults = {
                _triggers : [],
                _panels : [],
                _prev : null,
                _next : null,
                nowOn : 0,
                count : 0,
                multiple : false,
                effect : '',
                activeCls : 'active',
                autoPlay : false,
                interval : 1000,
                overPause : true,
                activeIndex : 0,
                delay : 500
            };

            //鎻掍欢鍐呴儴锛宼his涓哄寘瑁呭ソ鐨刯query瀵硅薄锛岃€岄潪dom瀵硅薄
            var _switchable = this.Switchable;

            _option = $.extend({}, defaults, option);

            _option.owner = this;
            _option._panels = this.find(_option.panelCls);
            _option.count = _option._panels.length;

            if (_option.triggerCls) {
                _option._triggers = this.find(_option.triggerCls);
                _option._triggers.each(function (n) {$(this).data({index : n});});

                if (_option.trigger == 'click') {
                    _option._triggers.on(_option.trigger, _option, methods.switchTo);
                }
                if (_option.trigger == 'over') {
                    var hoverTimer;

                    _option._triggers
                        .on('mouseenter', _option, function (e) {
                            clearTimeout(hoverTimer);
                            hoverTimer = setTimeout(methods.switchTo, e.data.delay, e);
                        })
                        .on('mouseleave', function () {
                            clearTimeout(hoverTimer);
                        });
                }
            }

            this.data({
                setting : _option
            });

            if (_option.pervCls) {
                this.find(_option.pervCls).on('click', _option, methods.prev);
            }
            if (_option.nextCls) {
                this.find(_option.nextCls).on('click', _option, methods.next);
            }

            //鑷姩鎾斁
            if (_option.autoPlay) {
                methods.start.apply(this);

                if (_option.overPause) {
                    $(this).hover(methods.stop, methods.start);
                }
            }

            //榛樿閫変腑鐘舵€�
            if (_option.activeIndex >= 0) { methods.switchTo.apply(null, [_option, _option.activeIndex]); }
        },

        /*
         鎵ц鍏蜂綋鍒囨崲鍔ㄤ綔

         @access private
         @param obj
         */
        switchTo : function() {
            if (arguments.length == 1) {
                var setting = arguments[0].data;
                var index = $(arguments[0].currentTarget).data("index");
            }
            else {
                var setting = arguments[0];
                var index = arguments[1];
            }

            if (!setting.multiple) {
                //闅愯棌鎵€鏈夊唴瀹�
                $(setting._panels).hide();
            }

            //绉婚櫎瑙﹀彂鍣ㄩ€変腑鏍峰紡
            $(setting._triggers).removeClass(setting.activeCls);

            //瀹炵幇澶氱鍒囨崲鏁堟灉
            if (setting.effect != '') {
                eval('$(setting._panels[index]).' + setting.effect + 'Toggle();');
            }
            else {
                $(setting._panels[index]).toggle();
            }

            //妫€鏌ユ槸鍚︽湁寮傛鍔犺浇鍐呭
            var lazyload = $(setting._panels[index]).find('.datalazyload');
            if (lazyload.length > 0) {
                $(setting._panels[index]).html(lazyload.val());
            }

            //瑙﹀彂鍣ㄧ粦瀹氭牱寮�
            $(setting._triggers[index]).toggleClass(setting.activeCls);
            setting.nowOn = index;
        },

        /*
         鎶借薄鍒囨崲鍔ㄤ綔

         涓婁竴涓�

         @access public
         @param obj
         */
        prev : function(event) {
            var setting = event.data;
            var n = setting.nowOn - 1 < 0 ? setting.count - 1 : setting.nowOn - 1;

            return methods.switchTo.apply(null, [setting, n]);
        },

        /*
         鎶借薄鍒囨崲鍔ㄤ綔

         涓嬩竴涓�

         @access public
         @param obj
         */
        next : function(event) {
            var setting = event.data;
            var n = setting.nowOn + 1 >= setting.count ? 0 : setting.nowOn + 1;

            return methods.switchTo.apply(null, [setting, n]);
        },

        /*
         鎶借薄鍔ㄤ綔

         寮€濮嬭嚜鍔ㄦ挱鏀�

         @access public
         */
        start : function () {
            var v_data = $(this).data();

            clearInterval(v_data.timing);
            v_data.timing = setInterval(methods.next, v_data.setting.interval, {data : v_data.setting});
        },

        /*
         鎶借薄鍔ㄤ綔

         鏆傚仠鎾斁

         @access public
         */
        stop : function () {
            clearInterval($(this).data('timing'));
        }
    };

    $.fn.Switchable = function ( method ) {
        if ( methods[method] ) {
            return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
            return methods.init.apply( this, arguments );
        } else {
            $.error( 'Method ' +  method + ' does not exist on jQuery switchable' );
        }
    };
})(jQuery);