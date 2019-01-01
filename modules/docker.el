;; Docker module
(use-package dockerfile-mode
  :ensure t
  :mode ("Dockerfile\\'" . dockerfile-mode))

(use-package docker-compose-mode
  :ensure t
  :mode ("docker-compose.yml\\'". docker-compose-mode))
