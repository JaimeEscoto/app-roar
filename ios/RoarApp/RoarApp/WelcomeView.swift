import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color("BackgroundTop"), Color("BackgroundBottom")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 24) {
                Spacer()

                VStack(spacing: 12) {
                    Text("Welcome to ROAR")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)

                    Text("Track your emotional wellbeing with daily reflections, gentle insights, and affirmations.")
                        .multilineTextAlignment(.center)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.white.opacity(0.9))
                        .padding(.horizontal, 24)
                }

                Spacer()

                Button {
                    // Future navigation to onboarding flow
                } label: {
                    Text("Start Your Journey")
                        .font(.system(.headline, design: .rounded))
                        .fontWeight(.semibold)
                        .padding(.vertical, 16)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .foregroundColor(Color("AccentDeepBlue"))
                        .cornerRadius(16)
                        .padding(.horizontal, 24)
                        .shadow(color: Color.black.opacity(0.15), radius: 12, x: 0, y: 6)
                }

                Spacer()
            }
        }
    }
}

#Preview {
    WelcomeView()
        .environment(\.colorScheme, .light)
}
