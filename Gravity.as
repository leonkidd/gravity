package
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class Gravity extends Sprite {
		public function Gravity() {
			env();
		}
		
		/**
		 * 
		 */
		public function env():void {
			for(var i = 0; i < this.numChildren; i++) {
				var c:DisplayObject = getChildAt(i);
				trace(c);
			}
		}
	}
}