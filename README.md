# CHPlaceholder

## Installation

Copy CHPlaceholder.h/m to your project.

	#import "CHPlaceholder.h"

## Usage

### Programatically

	- (void)viewDidLoad {
    [super viewDidLoad];
    
        // Makes a 200 x 200 box in the top left corner.
    CHPlaceholder *placeholder = [[CHPlaceholder alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    placeholder.backgroundColor = [UIColor clearColor];
    placeholder.arrowColor = [UIColor blackColor];
    placeholder.arrowWidth = 5;
    
        // Setting arrowSize will turn off autoresizing of the arrows.
        //placeholder.arrowSize = 45;
    
    [self.view addSubview:placeholder];
    
        // The other 320 x 320 box is made all in the IB.
	}

### Inferface Builder

Drag in a view and make it a class of CHPlaceholder. Designables will load then you can set the arrows.


## Requirements

	Xcode 6+
	ARC
	iOS 7+

## Author

Chayel Heinsen

## License

CHPlaceholder is available under the MIT license. See the LICENSE file for more info.

