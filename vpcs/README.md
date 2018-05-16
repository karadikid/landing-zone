# VPC Multi-tier CloudFormation Template

## Usage

...

## Contributing

...how do i develop, test, contribute changes back...

## TO DO

* Expand local tests to support the common variants of the LZ design. e.g.:
  * Test Cases
    * Tier 3 only
    * Tiers 2 and 3 only
    * All three tiers with "private" tier 1
    * All three tiers with "public" tier 1
  * Entails:
    * Create parameter file for each test case
    * Create test script and validate.rb for each test case
  * Expand the validate.rb tests to do more than just checking for the VPC 
* Parameterize VPC level default routing (e.g. back to on-premises data center)
* Add tagging to resources
* Consider whether or not AWS::Region would be useful to put in resource names