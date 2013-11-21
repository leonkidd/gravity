package
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import cn.heroes.gravity.Star;
	
	public class Gravity extends Sprite {
		var earth:Star = new Star(0xCE9C63, 60);
		var dev:Star = new Star(0x0066CC, 10);
		var angle:Number = 0;
		var r:Number = 0;
		
		public function Gravity() {
			start();
		}
		
		public function start() {
			//env();
			//trace(dev);
			
			earth.x = 400;
			earth.y = 300;
			this.addChild(earth);
			
			dev.x = 260;
			dev.y = 220;
			this.addChild(dev);
			
			r = apart(dev, earth);
			
			var timer = new Timer(20);
			timer.addEventListener(TimerEvent.TIMER,timerHandler);
			timer.start();
		}
		public function timerHandler(event:TimerEvent) {
			angle += 0.5;
			dev.x = earth.x + Math.sin(angle/180*Math.PI)*r;
			dev.y = earth.y - Math.cos(angle/180*Math.PI)*r;
			
			if(event!=null){
				event.updateAfterEvent();
			}
		}
		
		/**
		 * The apart of a and b.
		 */
		public function apart(a:DisplayObject, b:DisplayObject):Number {
			var _x = (a.x - b.x);
			var _y = (a.y - b.y);
			return Math.sqrt(_x*_x + _y*_y);
		}
		
		public function env():void {
			for(var i = 0; i < this.numChildren; i++) {
				var c:DisplayObject = getChildAt(i);
				trace(c);
			}
		}
	}
}