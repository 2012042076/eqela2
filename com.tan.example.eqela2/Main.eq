
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : LayerWidget, EventReceiver	// INHERIT EXISTING CLASS : =  extend <- java
{
	public void initialize()	// initialize() <- ContainerWidget <- LayerWidget 
	{
		base.initialize();	// base = super <- java
		
		set_size_request_override(px("50mm"),px("70mm"));	 // method used to set a size of a window
											  				// px - gives the length
															  // set_size_request_override() <-  Widget <- ContainerWidget <- LayerWidget
															 	
		add(CanvasWidget.for_colors(Color.instance("#0099FF"),Color.instance("#CCEBFF")));			
															   // add() <- ContainerWidget <- LayerWidget 
									 						  // adds widgets
															   // Color.instance creates a color for your window
															
			
																				// .for_string - create string
																				// .set_event - create an action for the button

		add(ButtonWidget.for_string("Click Here").set_event("clicked"));
										
	}
	
	public void on_event(Object o)
	{
			if("clicked".equals(o))
			{
				add(CanvasWidget.for_colors(Color.instance("#0099FF"),Color.instance("#CCEBFF")));
				add(LabelWidget.for_string("UST").set_font(Theme.font().modify("6mm bold color=white outline-color=silver")));		//creates string by using a method from com.eqela.libcommonwidget
			}
			
			
	}
}
