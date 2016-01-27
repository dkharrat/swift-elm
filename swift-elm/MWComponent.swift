
import Foundation

struct MWComponentBase {
    let id: String
    let parentId: String?
    let frame: NSRect
}

protocol MWComponent {
    typealias Model
    typealias Action
    typealias Context

    static func initModel() -> Model
    static func update(action: Action, model: Model) -> Model
    static func view(context: Context, model: Model, base: MWComponentBase) -> MWNode
}