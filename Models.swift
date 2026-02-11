import Foundation

enum UserCondition {
    case energetic    // 元気
    case normal       // 普通
    case tired        // 疲れてる
}

struct RunningPlan {
    let time: Int              // minutes
    let intensity: String      // 強度
    let reasons: [String]      // 2つの理由
}

func getRunningPlan(for condition: UserCondition) -> RunningPlan {
    switch condition {
    case .energetic:
        return RunningPlan(
            time: 30,
            intensity: "少しがんばる",
            reasons: [
                "体調が良いから距離を伸ばす",
                "今日のうちにトレーニングを終わらせる"
            ]
        )
    case .normal:
        return RunningPlan(
            time: 20,
            intensity: "ゆっくり",
            reasons: [
                "無理なく続ける距離",
                "楽なペースで習慣を保つ"
            ]
        )
    case .tired:
        return RunningPlan(
            time: 10,
            intensity: "ゆっくり",
            reasons: [
                "疲労回復を優先",
                "短く軽くリセットする"
            ]
        )
    }
}
