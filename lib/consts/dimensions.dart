import 'dart:math';
import 'dart:ui';

// Size of the screen
double pixelRatio = window.devicePixelRatio;
Size physicalScreenSize = window.physicalSize;
double physicalWidth = physicalScreenSize.width;
double physicalHeight = physicalScreenSize.height;

Size logicalScreenSize = window.physicalSize / pixelRatio;

double screenWidth = logicalScreenSize.width;
double screenHeight = logicalScreenSize.height;

// Size of the grid
double containerSize = min(screenWidth, screenHeight);
double smallWindowSize = containerSize / 3;
double largeWindowSize = smallWindowSize * 2;

// Positions of the small windows
double topRowPositionTop = (screenHeight - containerSize) / 2;
double midRowPositionTop = topRowPositionTop + smallWindowSize;
double botRowPositionTop = topRowPositionTop + 2 * smallWindowSize;

double leftColumnPositionLeft = (screenWidth - containerSize) / 2;
double midColumnPositionLeft = leftColumnPositionLeft + smallWindowSize;
double botColumnPositionLeft = leftColumnPositionLeft + 2 * smallWindowSize;

// Positions of the large windows
double topLargeWindowTop = topRowPositionTop;
double botLargeWindowTop = topRowPositionTop + smallWindowSize;

double leftLargeWindowLeft = leftColumnPositionLeft;
double rightLargeWindowLeft = leftColumnPositionLeft + smallWindowSize;
