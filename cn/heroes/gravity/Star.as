package cn.heroes.gravity
{
	import flash.display.Graphics;
	import flash.display.Sprite;

	/**
	 * 太空星星、卫星、人或其他任何物件
	 */
	public class Star extends Sprite {
		/** mass */
		public var m:Number;
		public function Star(color:uint=0x000000, radius:Number=50) {
			var g:Graphics = this.graphics;
			g.beginFill(color);
			g.drawCircle(0, 0, radius);
			g.endFill();
		}
	}
}