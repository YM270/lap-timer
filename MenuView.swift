import SwiftUI

struct MenuView: View {
    let condition: UserCondition
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        let plan = getRunningPlan(for: condition)
        
        VStack(spacing: 32) {
            Spacer()
            
            VStack(spacing: 24) {
                VStack(spacing: 8) {
                    Text("時間")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("\(plan.time)分")
                        .font(.system(size: 48, weight: .bold))
                }
                
                VStack(spacing: 8) {
                    Text("強度")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(plan.intensity)
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("理由")
                        .font(.caption)
                        .foregroundColor(.gray)
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(plan.reasons, id: \.self) { reason in
                            HStack(alignment: .top, spacing: 8) {
                                Text("•")
                                    .fontWeight(.bold)
                                Text(reason)
                            }
                        }
                    }
                    .font(.callout)
                }
            }
            
            Spacer()
            
            Button(action: {
                dismiss()
            }) {
                Text("これでOK")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .foreground(.white)
                    .background(Color.green)
                    .cornerRadius(8)
            }
        }
        .padding(.horizontal, 24)
        .navigationBarBackButtonHidden(false)
    }
}

#Preview {
    let condition = UserCondition.energetic
    MenuView(condition: condition)
}
