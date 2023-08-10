# Model Mapper

Exmaple 

struct TestApiModel: Codable {
  let id: Int?
  let title_value: String?
}

struct TestModel {
  let id: Int
  let title: String
}

struct TestMapper: Mapper {
    typealias I = TestApiModel
    typealias O = TestModel
    
    func map(_ input: TestApiModel) -> TestModel {
        TestModel(id: input.id ?? -1, title: input.title_value ?? "")
    }
    
    func emptyModel() -> TestModel {
        TestModel(id: -1, title: "")
    }
    
}
