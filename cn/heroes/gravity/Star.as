package cn.heroes.gravity
{
	import flash.display.Graphics;
	import flash.display.Sprite;

	public class Star extends Sprite
	{
		public function Star(color:uint=0x000000, radius:Number=50) {
			var g:Graphics = this.graphics;
			g.beginFill(color);
			g.drawCircle(0, 0, radius);
			g.endFill();
		}
	}
}