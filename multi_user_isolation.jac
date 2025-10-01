node UserProfile {
    has username: str;
    has bio: str = "";
}

walker GetProfile {
    can get_user_info with entry {
         # 'root' automatically points to the current user's graph
        profiles = [root-->(`?UserProfile)];
        if profiles {
            profile = profiles[0];
            print(f"Profile: {profile.username}");
            print(f"Bio: {profile.bio}");
        } else {
            print("No profile found");
        }
    }
}

walker CreateProfile {
    has username: str;
    has bio: str;

    can create with entry {
        # It looks for the profile connected to the current user's root
        profile = root ++> UserProfile(
            username=self.username,
            bio=self.bio
        );
        print(f"Created profile for {profile[0].username}");
    }
}

with entry {
    # This code works for any user automatically
    CreateProfile(username="alice", bio="Jac developer") spawn root;
    GetProfile() spawn root;
}