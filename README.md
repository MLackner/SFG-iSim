SFG-iSim
========
	- This application needs MATLAB(R) to run. See \textit{www.mathworks.com} for more information.
	- After installing the application run MATLAB(R) and select \emph{SFG-iSim} in the \textbf{Apps} panel to run it.
	- In the \textbf{Mode} panel select the vibrational mode you want to calculate your intensities/susceptibilities for.
	- In the \textbf{Setup} panel you can enter specific parameters of your experimental setup. Via \textbf{Save Setup} and \textbf{Load Setup} you are able to save and load these parameters.
	- In the \textbf{x Data} panel you can choose which data shall be plotted on the x axis.
	- In the \textbf{y Data} panel you can choose which data shall be plotted on the y axis of 3D-plots. If \textbf{none} is selected the application will do a 2D-plot.
	- In the \textbf{z Data} panel you can choose which data shall be plotted on the z axis of 3D-plots or the y axis of 2D-plots respectively.
	- By selecting \textbf{Apply Fresnel Factors} you apply your specific setup parameters to the susceptibilities.
	- By selecting \textbf{Apply Ratio} the application calculates the chosen ratio in the \textbf{Ratio} panel. Here \textbf{ss} stands for symmetric stretch and \textbf{as} stands for antisymmetric stretch.
	- Selecting \textbf{Twist Angle fixed} will fix the twist angle of the chosen moiety in the calculations to the entered angle, allowing 2D-plots.
	- Selecting \textbf{Tilt Angle distribution} will apply a gaussian distribution function to the tilt angles where the entered value is the standard deviation of the tilt angle. Note: As of v.1.0 this does only work for methyl and carbonyl moieties.
	- Plot the theoretical data by pressing \textbf{Plot Data}.
	- You can enter the MATLAB(R) internal Proberty Editor by clicking \textbf{Plot Options...}
	- By selecting \textbf{Plot in current figure} the next data will be plotted in the last active figure.
	- The number of calculated data points can be changed by clicking the \textbf{Settings...} button.
	- In the \textbf{Plot Settings} panel you can set the axes limits and the style of your next plot. Note: axis limits have to entered with the following format: \textbf{0 10}, where the first number is the lower and the last number is the upper limit.
	- The calculated data is send to the MATLAB(R) workspace. You can select a name for the exported data by typing it in the \textbf{Export z Data as} field. Note: If there is a variable in the workspace that has the same name as the one typed in, the workspace variable will be overwritten by the new data.