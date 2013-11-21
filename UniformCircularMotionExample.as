package
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.geom.Point;
	import flash.utils.Timer;
	
	public class UniformCircularMotionExample extends Sprite
	{
		
		private var timer:Timer;
		
		private var ball:Shape;
		private const R:int=100;
		private const CENTER:Point=new Point(200,200);
		private var angle:int=0;
		private const BALL_R:int=5;
		private const BALL_COLOR:uint=0xFF0000;
		private const BASE_LINE_WIDTH:int=1;
		
		public function UniformCircularMotionExample()
		{
			//基线
			this.graphics.lineStyle(BASE_LINE_WIDTH);
			this.graphics.drawCircle(CENTER.x,CENTER.y,R);
			
			//球
			ball=new Shape;
			ball.graphics.beginFill(BALL_COLOR);
			ball.graphics.drawCircle(0,0,BALL_R);
			ball.graphics.endFill();
			addChild(ball);
			
			timer=new Timer(20);
			timer.addEventListener(TimerEvent.TIMER,timerHandler);
			timer.start();
			
			timerHandler(null);
		}
		
		private function timerHandler(event:TimerEvent):void{
			angle+=1;
			ball.x=CENTER.x+Math.sin(angle/180*Math.PI)*R;
			ball.y=CENTER.y-Math.cos(angle/180*Math.PI)*R;
			
			if(event!=null){
				event.updateAfterEvent();
			}
		}
	}
}