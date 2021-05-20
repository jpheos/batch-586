const initNavbar = () => {
  const navbar = document.querySelector('.navbar-lewagon')

  if (!navbar)
    return

  document.addEventListener('scroll', (e) => {
    // navbar.classList.toggle('navbar-lewagon-white', (window.scrollY > window.innerHeight));

    if (window.scrollY > window.innerHeight )
      navbar.classList.add('navbar-lewagon-white');
    else
      navbar.classList.remove('navbar-lewagon-white');
  });
}

export { initNavbar };
