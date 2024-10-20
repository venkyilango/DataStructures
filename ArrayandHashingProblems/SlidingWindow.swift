// Sliding Window

//The idea behind sliding window is to maintain 2 pointers inside the window and check to see if it works as per the condition .
//The brute force approach would be iterating it twice . The first for loop will run until the inputArray size . In the nested for loop we will have the left and right pointer . We will increment right pointer and compare it with the left pointer . If the value matches we will return true else return false
//O(n*k)

func closeDuplicatesBruteForce(_ nums: [Int], k: Int) -> Bool {
    // we are initializing the leftPtr as index in first for loop and it runs until the size of the array
    for leftPtr in 0..<nums.count {
        //We initialize by next to the leftPtr, so we increment it by leftPtr + 1 and it runs until the size of the array and it will check the min of array lenght or leftPtrIndex + k
        for rightPtr in leftPtr + 1..<min(nums.count, leftPtr + k) {
            //as we iterate we check the left pointer is equal to the right pointer and returns true
            if nums[leftPtr] == nums[rightPtr] {
                return true
            }
        }
    }
    return false
}

//O(n)
func closeDuplicates(_ nums: [Int], k: Int) -> Bool {
    //we will initialize the empty set
    var window: Set<Int> = []
    //initialize the leftptr to 0
    var leftPtr = 0
    // run the loop until the length of the input array
    for rightPtr in 0..<nums.count {
        //check to see if window size does not exceed the k, if exceeds remove the left pointer (first value) and increment the leftPtr
        if rightPtr - leftPtr + 1 > k {
            window.remove(nums[leftPtr])
            leftPtr += 1
        }
        //if window contains right pointer return true
        if window.contains(rightPtr) {
            return true
        }
        // if the value is unique and does not exceed the k then insert the value at the right pointer
        window.insert(nums[rightPtr])
    }
    return false
}

