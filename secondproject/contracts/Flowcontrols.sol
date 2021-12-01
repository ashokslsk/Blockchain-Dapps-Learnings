pragma solidity >=0.4.22 <0.9.0;

// SPDX-License-Identifier: MIT

contract FlowControl {

    function calcDozenDiscountIF(uint purchasedQty) private pure returns (bool){
        bool givenDozenPrice = false;

        if(purchasedQty >= 12)
            givenDozenPrice= true;  // setting the discount on condition
        else 
            givenDozenPrice = false;

        return(givenDozenPrice);    
    } 

    function calcDozenDiscountWHILE(uint purchaedQty) private pure returns (bool) {
        bool givenDozenPrice = false;
        uint numDonuts = 1;

        while(numDonuts < purchaedQty){
            numDonuts++;

            if (numDonuts >= 12) {
                givenDozenPrice = true;
                break;
            }
        }
            return (givenDozenPrice);
    }

      function calcDozenDiscountDO(uint purchaedQty) private pure returns (bool) {
        bool givenDozenPrice = false;
        uint numDonuts = 1;

        do {
            numDonuts++;
            if (numDonuts >= 12) {
                givenDozenPrice = true;
                break;
            }
        }while(numDonuts < purchaedQty);

        return (givenDozenPrice);
    }

    function calcDozenDiscountFOR(uint purchasedQty) private pure returns (bool) {
        bool givenDozenPrice = false;
        uint numdonuts = 1;

        for (numdonuts = 1; numdonuts <= purchasedQty; numdonuts++){
            if(numdonuts >= 12){
                givenDozenPrice = true; 
                break; 
            }
        }
        return (givenDozenPrice);
    }
}