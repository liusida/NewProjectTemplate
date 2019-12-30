#include "gtest/gtest.h"
#include <iostream>

#include "cudaProj1.h"

// The fixture for testing class Project1. From google test primer.
class CudaProj1Test : public ::testing::Test {
protected:
  // You can remove any or all of the following functions if its body
  // is empty.

  CudaProj1Test() {
    // You can do set-up work for each test here.
  }

  virtual ~CudaProj1Test() {
    // You can do clean-up work that doesn't throw exceptions here.
  }

  // If the constructor and destructor are not enough for setting up
  // and cleaning up each test, you can define the following methods:
  virtual void SetUp() {
    // Code here will be called immediately after the constructor (right
    // before each test).
  }

  virtual void TearDown() {
    // Code here will be called immediately after each test (right
    // before the destructor).
  }

  // Objects declared here can be used by all tests in the test case for
  // Project1.
  cudaProj1 p;
};

// Test case must be called the class above
// Also note: use TEST_F instead of TEST to access the test fixture (from google
// test primer)
TEST_F(CudaProj1Test, startKernel) {
  p.startKernel(); // we have access to p, declared in the fixture
  EXPECT_EQ(1, 1);
}