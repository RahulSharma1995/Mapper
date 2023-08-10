# Model Mapper

Exmaple 

Api Model

      struct TestApiModel: Codable {
        let id: Int?
        let title_value: String?
      }

Model for View

    struct TestModel {
      let id: Int
      let title: String
    }

Mapper

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
