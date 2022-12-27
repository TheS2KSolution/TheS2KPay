package com.thes2ksolution.pay.s2kpay.constants;


public class Security {
    public static final long EXPIRATION_TIME = 432_000_000;
    public static final long EXPIRATION_TIME2 = 932_000_000; // 5 days expressed in milliseconds
    public static final String TOKEN_PREFIX = "Bearer ";
    public static final String JWT_TOKEN_HEADER = "accessToken";
    public static final String JWT_TOKEN_REFRESH = "refreshToken";
    public static final String TOKEN_CANNOT_BE_VERIFIED = "Token ne peut pas être vérifié";
    public static final String GET_ARRAYS_LLC = "Get Arrays, LLC";
    public static final String GET_ARRAYS_ADMINISTRATION = "Portail de gestion des utilisateurs";
    public static final String AUTHORITIES = "authorities";
    public static final String FORBIDDEN_MESSAGE = "Vous devez vous connecter pour accéder à cette page";
    public static final String ACCESS_DENIED_MESSAGE = "Vous n'avez pas la permission d'accéder à cette page";
    public static final String OPTIONS_HTTP_METHOD = "OPTIONS";
    public static final String[] PUBLIC_URLS = {"/user/login", "/user/register", "/user/image/**", "/user/list"};
    //public static final String[] PUBLIC_URLS = {"**"};
    public static final String ACCESS_NOT_ACCESS = "Accès refusé";
    public static final String USER_NOT_FOUND = "utilisateur introuvable par nom d'utilisateur";
    public static final String USER_EXIT = "Ce nom d'utilisateur existe déjà";
    public static final String EMAIL_EXIT = "l'email existe déjà";
    public static final String PHONE_EXIT = "Ce numéro de téléphone existe déjà";
    public static final String RETURNING = "retour de l'utilisateur trouvé par nom d'utilisateur :";
    public static final String ACCOUNT_LOCKED = "Vôtre compte a été bloqué. Veuillez contacter l'administrateur";
    public static final String METHOD_IS_NOT_ALLOWED = "Cette méthode de demande n'est pas autorisée sur ce point de terminaison. Veuillez envoyer une requête '%s'";
    public static final String INTERNAL_SERVER_ERROR_MSG = "Une erreur s'est produite lors du traitement de la demande";
    public static final String INCORRECT_CREDENTIALS = "Nom d'utilisateur ou mot de passe incorrect. Veuillez réessayer";
    public static final String ACCOUNT_DISABLED = "Votre compte a été désactivé. S'il s'agit d'une erreur, veuillez contacter l'administrateur";
    public static final String ERROR_PROCESSING_FILE = "Une erreur s'est produite lors du traitement du fichier";
    public static final String NOT_ENOUGH_PERMISSION = "Vous n'avez pas assez d'autorisation";
    public static final String ERROR_PATH = "/error";
    public static final String URL = "la page non trouvé pour cet URL";


}
