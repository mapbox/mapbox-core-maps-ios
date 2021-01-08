import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(mapbox_core_maps_iosTests.allTests),
    ]
}
#endif
