$( document ).ready( function( event ){
	//Object allows to get messages from
	var pusher = new Pusher( '223f8bc150d5c95f72c2', {
		cluster: 'mt1',
		encrypted: true
	} );

    //This is a channel from which each game, if we were to have a lobby with
	//multiple games, would subscribe to. The channel would be named differently obviously
	//It's basically like saying, Me and Hat are in the same channel (channel 1) and
	//Chi and Jeremy are in the same channel (channel 2), me and Hat would be getting 
	//the same updates and those updates aren't seen by Chi and Jeremy

	//Anyway, since we're not publishing this for the whole world to see
	//we don't have to worry about multiple channels and etc.
	var channel = pusher.subscribe( 'main-channel' );

	//This binds a function to the channel in the event of game_event happening.
	//So basically, the binded function handles updating
	//The function activates officially after the server returns with data
	//I RECOMMEND HAVING TWO BROWSER UP TO SEE THE EFFECT
	channel.bind( 'main-event', function( data ) {
	    console.log( data.message );
	} );

} );

function donutButtonClick() {
	//Setting up data to send to backend if need be
	let gameInfo = {
		somefuck: "Shit fuck"
	};

	//This sends the data from gameInfo to the specified controller and specified method
	//in the controller, as you can see from the url construction
	$.post('/games/game_button_donut', gameInfo);
}