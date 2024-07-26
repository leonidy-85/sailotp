# 
# Do NOT Edit the Auto-generated Part!
# Generated by: spectacle version 0.32
# 

Name:       ru.yurasov.sailotp

# >> macros
# << macros

Summary:    SailOTP
Version:    1.11.1
Release:    3
Group:      Security
License:    BSD	
URL:        https://github.com/leonidy-85/sailotp.git
Source0:    %{name}.%{version}.tar.bz2
Source100:  ru.yurasov.sailotp.yaml
Requires:   sailfishsilica-qt5 >= 0.10.9
BuildRequires:  pkgconfig(Qt5Quick)
BuildRequires:  pkgconfig(Qt5Qml)
BuildRequires:  pkgconfig(Qt5Core)
BuildRequires:  pkgconfig(Qt5Multimedia)
BuildRequires:  pkgconfig(libcrypto)
BuildRequires:  desktop-file-utils

%description
A Sailfish implementation of the One Time Pad algorithm as used by Google Authenticator and a growing number of Websites.

%prep
%setup -q -n %{name}-%{version}

# >> setup
# << setup

%build
# >> build pre
# << build pre

%qmake5  \
    VERSION=%{version} \
    RELEASE=%{release}

make %{?_smp_mflags}

# >> build post
# << build post

%install
rm -rf %{buildroot}
# >> install pre
# << install pre
%qmake5_install

# >> install post
# << install post

desktop-file-install --delete-original       \
  --dir %{buildroot}%{_datadir}/applications             \
   %{buildroot}%{_datadir}/applications/*.desktop

%files
%defattr(-,root,root,-)
%{_bindir}/%{name}
%defattr(644,root,root,-)
%{_datadir}/%{name}
%{_datadir}/applications/%{name}.desktop
%{_datadir}/icons/hicolor/*/apps/%{name}.png
# >> files
# << files
