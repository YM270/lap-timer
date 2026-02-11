import SwiftUI

struct ConditionView: View {
    @State private var selectedCondition: UserCondition? = nil
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                Spacer()
                
                Text("今日はどんな感じ？")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                
                VStack(spacing: 16) {
                    NavigationLink(value: UserCondition.energetic) {
                        Button(action: {}) {
                            Text("元気")
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 16)
                                .foreground(.white)
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                    }
                    
                    NavigationLink(value: UserCondition.normal) {
                        Button(action: {}) {
                            Text("普通")
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 16)
                                .foreground(.white)
                                .background(Color.gray)
                                .cornerRadius(8)
                        }
                    }
                    
                    NavigationLink(value: UserCondition.tired) {
                        Button(action: {}) {
                            Text("疲れてる")
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 16)
                                .foreground(.white)
                                .background(Color.orange)
                                .cornerRadius(8)
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal, 24)
            .navigationDestination(for: UserCondition.self) { condition in
                MenuView(condition: condition)
            }
        }
    }
}

#Preview {
    ConditionView()
}
