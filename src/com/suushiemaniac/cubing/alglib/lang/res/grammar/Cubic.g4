grammar Cubic;

cubic: cubicAlg | cubicComm;

cubicAlg: cubicMove+;

cubicMove: singleDepthCubic
         | sliceCubic
         | nDepthCubic;

singleDepthCubic: CUBIC_PLANE CUBIC_MODIFIER?;
sliceCubic:CUBIC_SLICE CUBIC_MODIFIER?;
nDepthCubic: CUBIC_DEPTH? CUBIC_PLANE CUBIC_WIDE CUBIC_MODIFIER?;

cubicComm: cubicPureComm | cubicSetupComm;

cubicPureComm: COMM_BR_OPEN cubic COMM_COMMA cubic COMM_BR_CLOSE;

cubicSetupComm: COMM_BR_OPEN cubic COMM_SEMI_COLON cubic COMM_BR_CLOSE;

CUBIC_PLANE: [UDLRFBxyz];
CUBIC_SLICE: [udlrfbMSE];
CUBIC_MODIFIER: [\'2];
CUBIC_WIDE: 'w';
CUBIC_DEPTH: [3-9] | ([1-9][0-9]+);

COMM_BR_OPEN: '[';
COMM_COMMA: ',';
COMM_BR_CLOSE: ']';
COMM_SEMI_COLON: [;:];

WHITESPACE: [ \t\n] -> skip;