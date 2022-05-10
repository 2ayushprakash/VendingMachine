{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red79\green123\blue61;\red20\green20\blue20;\red172\green172\blue193;
\red70\green137\blue204;\red212\green212\blue212;\red167\green197\blue152;\red42\green88\blue69;\red237\green114\blue173;
\red30\green30\blue34;\red14\green86\blue166;\red12\green67\blue42;\red194\green126\blue101;}
{\*\expandedcolortbl;;\cssrgb\c37647\c54510\c30588;\cssrgb\c10196\c10196\c10196;\cssrgb\c72941\c73333\c80000;
\cssrgb\c33725\c61176\c83922;\cssrgb\c86275\c86275\c86275;\cssrgb\c70980\c80784\c65882;\cssrgb\c21176\c41569\c34118;\cssrgb\c95294\c54118\c73333;
\cssrgb\c15686\c15686\c17647;\cssrgb\c3137\c42353\c70980;\cssrgb\c2353\c32549\c21569;\cssrgb\c80784\c56863\c47059;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 //SPDX-License-Identifier: MIT\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 pragma\cf4 \strokec4  \cf5 \strokec5 solidity\cf4 \strokec4  \cf6 \strokec6 ^\cf7 \strokec7 0.8.11\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cf5 \cb3 \strokec5 contract\cf4 \strokec4  VendingMachine \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 address\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  owner\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 mapping\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 address\cf4 \strokec4  => \cf5 \strokec5 uint\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  donutBalances\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cb3     \cf9 \strokec9 constructor\cf6 \strokec6 ()\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         owner \cf6 \strokec6 =\cf4 \strokec4  \cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3         donutBalances\cf6 \strokec6 [\cf5 \strokec5 address\cf6 \strokec6 (\cf11 \strokec11 this\cf6 \strokec6 )]\cf4 \strokec4  \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 100\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\
\cb3     \cf5 \strokec5 function\cf4 \strokec4  getVendingMachineBalance\cf6 \strokec6 ()\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf12 \strokec12 returns\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 uint\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf12 \strokec12 return\cf4 \strokec4  donutBalances\cf6 \strokec6 [\cf5 \strokec5 address\cf6 \strokec6 (\cf11 \strokec11 this\cf6 \strokec6 )];\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf5 \strokec5 function\cf4 \strokec4  restock\cf6 \strokec6 (\cf5 \strokec5 uint\cf4 \strokec4  amount\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 require\cf6 \strokec6 (\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender \cf6 \strokec6 ==\cf4 \strokec4  owner\cf6 \strokec6 ,\cf4 \strokec4  \cf13 \strokec13 "Only the owner can restock the vending machine."\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3         donutBalances\cf6 \strokec6 [\cf5 \strokec5 address\cf6 \strokec6 (\cf11 \strokec11 this\cf6 \strokec6 )]\cf4 \strokec4  \cf6 \strokec6 +=\cf4 \strokec4  amount\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf5 \strokec5 function\cf4 \strokec4  purchase\cf6 \strokec6 (\cf5 \strokec5 uint\cf4 \strokec4  amount\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf8 \strokec8 payable\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 require\cf6 \strokec6 (\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 value \cf6 \strokec6 >=\cf4 \strokec4  amount \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 2\cf4 \strokec4  ether\cf6 \strokec6 ,\cf4 \strokec4  \cf13 \strokec13 "Donuts cost 2 ether cheapo."\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\
\cb3         \cf10 \strokec10 require\cf6 \strokec6 (\cf4 \strokec4 donutBalances\cf6 \strokec6 [\cf5 \strokec5 address\cf6 \strokec6 (\cf11 \strokec11 this\cf6 \strokec6 )]\cf4 \strokec4  \cf6 \strokec6 >=\cf4 \strokec4  amount\cf6 \strokec6 ,\cf4 \strokec4  \cf13 \strokec13 "Not enough donuts, sorry!"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\
\cb3         donutBalances\cf6 \strokec6 [\cf5 \strokec5 address\cf6 \strokec6 (\cf11 \strokec11 this\cf6 \strokec6 )]\cf4 \strokec4  \cf6 \strokec6 -=\cf4 \strokec4  amount\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cb3         donutBalances\cf6 \strokec6 [\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender\cf6 \strokec6 ]\cf4 \strokec4  \cf6 \strokec6 +=\cf4 \strokec4  amount\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\
}