capi-problem
============

Example of a capi problem i have using Lispworks CAPI.

Steps:
	- Compile system
	- Push puzzle toolbar icon
	- Push + on the recently opened pane
	- Try to drag the pane and you'll notice it's NOT FLUID

Problems:
	- When i run a process which executes some big calculation on background, interface lags and it´s inusable (NOT FLUID).
	
	- When timer executes (here i use a timer for the example but into an application redraw should be fired 
	with events) user multi-column-list-panel items might change its selection and could lead to errors when 
	selecting items (FLICKER).

	