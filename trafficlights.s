.include "../AAL/symbols.s"
	.global main
main:
	STMFD SP!, {LR}	    @preserve any necessary registers

	BL init
	
.global testloop
testloop:
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@RED

@ Setting the output Pin(s)
	MOV R0, #21
	BL set_pin_as_output

@Turning on the Pin(s)
	MOV R0, #21
	MOV R1, #PIN_ON
	BL change_pin_state	@Turn on GPIOp21

@Delay time	
	MOV R0, #4
	BL sleep		@4 seconds delay

@Turning the Pin(s) off									
	MOV R0, #21
	MOV R1, #PIN_OFF
	BL change_pin_state	@turn off GPIOp21


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@RED+ORANGE

@ Setting the output Pin(s)
	MOV R0, #20
	BL set_pin_as_output
	MOV R0, #21
	BL set_pin_as_output

@Turning on the Pin(s)
	MOV R0, #20
	MOV R1, #PIN_ON
	BL change_pin_state	@Turn on GPIOp21

	MOV R0, #21
	MOV R1, #PIN_ON
	BL change_pin_state	@Turn on GPIOp21

@Delay time
	MOV R0, #1
	BL sleep		@1 seconds delay

@Turning the Pin(s) off				
	MOV R0, #20
	MOV R1, #PIN_OFF
	BL change_pin_state	@turn off GPIOp21

	MOV R0, #21
	MOV R1, #PIN_OFF
	BL change_pin_state	@turn off GPIOp21


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@GREEN

@ Setting the output Pin(s)
	MOV R0, #16
	BL set_pin_as_output

@Turning on the Pin(s)
	MOV R0, #16
	MOV R1, #PIN_ON
	BL change_pin_state	@Turn on GPIOp21

@Delay time
	MOV R0, #4
	BL sleep		@4 seconds delay

@Turning the Pin(s) off					
	MOV R0, #16
	MOV R1, #PIN_OFF
	BL change_pin_state	@turn off GPIOp21


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ORANGE

@ Setting the output Pin(s)
	MOV R0, #20
	BL set_pin_as_output

@Turning on the Pin(s)
	MOV R0, #20
	MOV R1, #PIN_ON
	BL change_pin_state	@Turn on GPIOp21

@Delay time	
	MOV R0, #1
	BL sleep		@4 seconds delay

@Turning the Pin(s) off								
	MOV R0, #20
	MOV R1, #PIN_OFF
	BL change_pin_state	@turn off GPIOp21


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



BL testloop @does not stop/ if removed stop






